{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

import           Yesod

data HelloWorld = HelloWorld

mkYesod "HelloWorld" [parseRoutes|
    / HomeR GET
    |]

instance Yesod HelloWorld

getHomeR :: Handler Html
getHomeR = defaultLayout [whamlet|HelloWorld!|]

main :: IO ()
main = warp 3000 HelloWorld

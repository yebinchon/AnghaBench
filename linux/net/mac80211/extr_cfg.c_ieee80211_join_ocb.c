
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct ocb_setup {int dummy; } ;
struct net_device {int dummy; } ;


 int IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee80211_ocb_join (int ,struct ocb_setup*) ;

__attribute__((used)) static int ieee80211_join_ocb(struct wiphy *wiphy, struct net_device *dev,
         struct ocb_setup *setup)
{
 return ieee80211_ocb_join(IEEE80211_DEV_TO_SUB_IF(dev), setup);
}

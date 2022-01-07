
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_disassoc_request {int dummy; } ;


 int IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee80211_mgd_disassoc (int ,struct cfg80211_disassoc_request*) ;

__attribute__((used)) static int ieee80211_disassoc(struct wiphy *wiphy, struct net_device *dev,
         struct cfg80211_disassoc_request *req)
{
 return ieee80211_mgd_disassoc(IEEE80211_DEV_TO_SUB_IF(dev), req);
}

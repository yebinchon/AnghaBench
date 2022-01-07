
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {scalar_t__ iftype; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;

__attribute__((used)) static bool nl80211_can_set_dev_channel(struct wireless_dev *wdev)
{
 return !wdev ||
  wdev->iftype == NL80211_IFTYPE_AP ||
  wdev->iftype == NL80211_IFTYPE_MESH_POINT ||
  wdev->iftype == NL80211_IFTYPE_MONITOR ||
  wdev->iftype == NL80211_IFTYPE_P2P_GO;
}

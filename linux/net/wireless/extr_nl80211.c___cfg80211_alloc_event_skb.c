
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int n_vendor_events; struct nl80211_vendor_cmd_info* vendor_events; } ;
struct sk_buff {int dummy; } ;
struct nl80211_vendor_cmd_info {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef int gfp_t ;
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;
typedef enum nl80211_attrs { ____Placeholder_nl80211_attrs } nl80211_attrs ;




 int WARN_ON (int) ;
 struct sk_buff* __cfg80211_alloc_vendor_skb (struct cfg80211_registered_device*,struct wireless_dev*,int,unsigned int,int ,int,int,struct nl80211_vendor_cmd_info const*,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

struct sk_buff *__cfg80211_alloc_event_skb(struct wiphy *wiphy,
        struct wireless_dev *wdev,
        enum nl80211_commands cmd,
        enum nl80211_attrs attr,
        unsigned int portid,
        int vendor_event_idx,
        int approxlen, gfp_t gfp)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 const struct nl80211_vendor_cmd_info *info;

 switch (cmd) {
 case 129:
  if (WARN_ON(vendor_event_idx != -1))
   return ((void*)0);
  info = ((void*)0);
  break;
 case 128:
  if (WARN_ON(vendor_event_idx < 0 ||
       vendor_event_idx >= wiphy->n_vendor_events))
   return ((void*)0);
  info = &wiphy->vendor_events[vendor_event_idx];
  break;
 default:
  WARN_ON(1);
  return ((void*)0);
 }

 return __cfg80211_alloc_vendor_skb(rdev, wdev, approxlen, portid, 0,
        cmd, attr, info, gfp);
}

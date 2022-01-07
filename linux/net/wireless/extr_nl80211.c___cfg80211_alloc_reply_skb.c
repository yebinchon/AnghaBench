
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* cur_cmd_info; } ;
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;
typedef enum nl80211_attrs { ____Placeholder_nl80211_attrs } nl80211_attrs ;
struct TYPE_2__ {int snd_seq; int snd_portid; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 struct sk_buff* __cfg80211_alloc_vendor_skb (struct cfg80211_registered_device*,int *,int,int ,int ,int,int,int *,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

struct sk_buff *__cfg80211_alloc_reply_skb(struct wiphy *wiphy,
        enum nl80211_commands cmd,
        enum nl80211_attrs attr,
        int approxlen)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 if (WARN_ON(!rdev->cur_cmd_info))
  return ((void*)0);

 return __cfg80211_alloc_vendor_skb(rdev, ((void*)0), approxlen,
        rdev->cur_cmd_info->snd_portid,
        rdev->cur_cmd_info->snd_seq,
        cmd, attr, ((void*)0), GFP_KERNEL);
}

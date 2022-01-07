
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ocb_setup {int chandef; } ;
struct net_device {int dummy; } ;
struct genl_info {struct net_device** user_ptr; } ;
typedef struct net_device cfg80211_registered_device ;


 int cfg80211_join_ocb (struct net_device*,struct net_device*,struct ocb_setup*) ;
 int nl80211_parse_chandef (struct net_device*,struct genl_info*,int *) ;

__attribute__((used)) static int nl80211_join_ocb(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct ocb_setup setup = {};
 int err;

 err = nl80211_parse_chandef(rdev, info, &setup.chandef);
 if (err)
  return err;

 return cfg80211_join_ocb(rdev, dev, &setup);
}

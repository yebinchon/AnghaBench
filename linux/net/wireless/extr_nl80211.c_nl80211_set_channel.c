
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct genl_info {struct net_device** user_ptr; } ;
typedef struct net_device cfg80211_registered_device ;


 int __nl80211_set_channel (struct net_device*,struct net_device*,struct genl_info*) ;

__attribute__((used)) static int nl80211_set_channel(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *netdev = info->user_ptr[1];

 return __nl80211_set_channel(rdev, netdev, info);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct genl_info {int attrs; } ;
struct cfg80211_registered_device {int dummy; } ;


 struct cfg80211_registered_device* __cfg80211_rdev_from_attrs (struct net*,int ) ;

__attribute__((used)) static struct cfg80211_registered_device *
cfg80211_get_dev_from_info(struct net *netns, struct genl_info *info)
{
 return __cfg80211_rdev_from_attrs(netns, info->attrs);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wireless_dev {scalar_t__ iftype; int mesh_id_len; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct mesh_config {int dummy; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_2__ {int update_mesh_config; } ;


 int ENOLINK ;
 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int nl80211_parse_mesh_config (struct genl_info*,struct mesh_config*,int *) ;
 int rdev_update_mesh_config (struct net_device*,struct net_device*,int ,struct mesh_config*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_update_mesh_config(struct sk_buff *skb,
          struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct mesh_config cfg;
 u32 mask;
 int err;

 if (wdev->iftype != NL80211_IFTYPE_MESH_POINT)
  return -EOPNOTSUPP;

 if (!rdev->ops->update_mesh_config)
  return -EOPNOTSUPP;

 err = nl80211_parse_mesh_config(info, &cfg, &mask);
 if (err)
  return err;

 wdev_lock(wdev);
 if (!wdev->mesh_id_len)
  err = -ENOLINK;

 if (!err)
  err = rdev_update_mesh_config(rdev, dev, mask, &cfg);

 wdev_unlock(wdev);

 return err;
}

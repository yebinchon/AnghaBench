
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int ieee80211_ptr; TYPE_1__* ops; } ;
struct TYPE_5__ {int key; } ;
struct key_parse {int type; TYPE_2__ p; int idx; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int ieee80211_ptr; TYPE_1__* ops; } ;
struct TYPE_4__ {int add_key; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MAC ;
 int NL80211_KEYTYPE_GROUP ;
 int NL80211_KEYTYPE_PAIRWISE ;
 scalar_t__ cfg80211_validate_key_settings (struct net_device*,TYPE_2__*,int ,int,int const*) ;
 int nl80211_key_allowed (int ) ;
 int nl80211_parse_key (struct genl_info*,struct key_parse*) ;
 int * nla_data (scalar_t__) ;
 int rdev_add_key (struct net_device*,struct net_device*,int ,int,int const*,TYPE_2__*) ;
 int wdev_lock (int ) ;
 int wdev_unlock (int ) ;

__attribute__((used)) static int nl80211_new_key(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 int err;
 struct net_device *dev = info->user_ptr[1];
 struct key_parse key;
 const u8 *mac_addr = ((void*)0);

 err = nl80211_parse_key(info, &key);
 if (err)
  return err;

 if (!key.p.key)
  return -EINVAL;

 if (info->attrs[NL80211_ATTR_MAC])
  mac_addr = nla_data(info->attrs[NL80211_ATTR_MAC]);

 if (key.type == -1) {
  if (mac_addr)
   key.type = NL80211_KEYTYPE_PAIRWISE;
  else
   key.type = NL80211_KEYTYPE_GROUP;
 }


 if (key.type != NL80211_KEYTYPE_PAIRWISE &&
     key.type != NL80211_KEYTYPE_GROUP)
  return -EINVAL;

 if (!rdev->ops->add_key)
  return -EOPNOTSUPP;

 if (cfg80211_validate_key_settings(rdev, &key.p, key.idx,
        key.type == NL80211_KEYTYPE_PAIRWISE,
        mac_addr))
  return -EINVAL;

 wdev_lock(dev->ieee80211_ptr);
 err = nl80211_key_allowed(dev->ieee80211_ptr);
 if (!err)
  err = rdev_add_key(rdev, dev, key.idx,
       key.type == NL80211_KEYTYPE_PAIRWISE,
        mac_addr, &key.p);
 wdev_unlock(dev->ieee80211_ptr);

 return err;
}

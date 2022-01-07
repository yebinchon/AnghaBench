
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct genl_info {scalar_t__ snd_portid; scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct TYPE_5__ {scalar_t__ conn_owner_nlportid; scalar_t__ iftype; } ;
struct TYPE_4__ {int disassoc; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 size_t NL80211_ATTR_IE ;
 size_t NL80211_ATTR_LOCAL_STATE_CHANGE ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_REASON_CODE ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int cfg80211_mlme_disassoc (struct net_device*,struct net_device*,int const*,int const*,int,scalar_t__,int) ;
 int * nla_data (scalar_t__) ;
 scalar_t__ nla_get_u16 (scalar_t__) ;
 int nla_len (scalar_t__) ;
 int wdev_lock (TYPE_2__*) ;
 int wdev_unlock (TYPE_2__*) ;

__attribute__((used)) static int nl80211_disassociate(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 const u8 *ie = ((void*)0), *bssid;
 int ie_len = 0, err;
 u16 reason_code;
 bool local_state_change;

 if (dev->ieee80211_ptr->conn_owner_nlportid &&
     dev->ieee80211_ptr->conn_owner_nlportid != info->snd_portid)
  return -EPERM;

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 if (!info->attrs[NL80211_ATTR_REASON_CODE])
  return -EINVAL;

 if (!rdev->ops->disassoc)
  return -EOPNOTSUPP;

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_STATION &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_CLIENT)
  return -EOPNOTSUPP;

 bssid = nla_data(info->attrs[NL80211_ATTR_MAC]);

 reason_code = nla_get_u16(info->attrs[NL80211_ATTR_REASON_CODE]);
 if (reason_code == 0) {

  return -EINVAL;
 }

 if (info->attrs[NL80211_ATTR_IE]) {
  ie = nla_data(info->attrs[NL80211_ATTR_IE]);
  ie_len = nla_len(info->attrs[NL80211_ATTR_IE]);
 }

 local_state_change = !!info->attrs[NL80211_ATTR_LOCAL_STATE_CHANGE];

 wdev_lock(dev->ieee80211_ptr);
 err = cfg80211_mlme_disassoc(rdev, dev, bssid, ie, ie_len, reason_code,
         local_state_change);
 wdev_unlock(dev->ieee80211_ptr);
 return err;
}

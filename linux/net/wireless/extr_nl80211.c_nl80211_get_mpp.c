
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct mpath_info {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
typedef int pinfo ;
struct TYPE_4__ {scalar_t__ iftype; } ;
struct TYPE_3__ {int get_mpp; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 size_t NL80211_ATTR_MAC ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int memset (struct mpath_info*,int ,int) ;
 scalar_t__ nl80211_send_mpath (struct sk_buff*,int ,int ,int ,struct net_device*,int *,int *,struct mpath_info*) ;
 int * nla_data (int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rdev_get_mpp (struct net_device*,struct net_device*,int *,int *,struct mpath_info*) ;

__attribute__((used)) static int nl80211_get_mpp(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 int err;
 struct net_device *dev = info->user_ptr[1];
 struct mpath_info pinfo;
 struct sk_buff *msg;
 u8 *dst = ((void*)0);
 u8 mpp[ETH_ALEN];

 memset(&pinfo, 0, sizeof(pinfo));

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 dst = nla_data(info->attrs[NL80211_ATTR_MAC]);

 if (!rdev->ops->get_mpp)
  return -EOPNOTSUPP;

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_MESH_POINT)
  return -EOPNOTSUPP;

 err = rdev_get_mpp(rdev, dev, dst, mpp, &pinfo);
 if (err)
  return err;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 if (nl80211_send_mpath(msg, info->snd_portid, info->snd_seq, 0,
          dev, dst, mpp, &pinfo) < 0) {
  nlmsg_free(msg);
  return -ENOBUFS;
 }

 return genlmsg_reply(msg, info);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct station_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; } ;
struct genl_info {int snd_seq; int snd_portid; int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
typedef int sinfo ;
struct TYPE_2__ {int get_station; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 size_t NL80211_ATTR_MAC ;
 int NL80211_CMD_NEW_STATION ;
 int NLMSG_DEFAULT_SIZE ;
 int cfg80211_sinfo_release_content (struct station_info*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int memset (struct station_info*,int ,int) ;
 scalar_t__ nl80211_send_station (struct sk_buff*,int ,int ,int ,int ,struct net_device*,struct net_device*,int *,struct station_info*) ;
 int * nla_data (int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rdev_get_station (struct net_device*,struct net_device*,int *,struct station_info*) ;

__attribute__((used)) static int nl80211_get_station(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct station_info sinfo;
 struct sk_buff *msg;
 u8 *mac_addr = ((void*)0);
 int err;

 memset(&sinfo, 0, sizeof(sinfo));

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 mac_addr = nla_data(info->attrs[NL80211_ATTR_MAC]);

 if (!rdev->ops->get_station)
  return -EOPNOTSUPP;

 err = rdev_get_station(rdev, dev, mac_addr, &sinfo);
 if (err)
  return err;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  cfg80211_sinfo_release_content(&sinfo);
  return -ENOMEM;
 }

 if (nl80211_send_station(msg, NL80211_CMD_NEW_STATION,
     info->snd_portid, info->snd_seq, 0,
     rdev, dev, mac_addr, &sinfo) < 0) {
  nlmsg_free(msg);
  return -ENOBUFS;
 }

 return genlmsg_reply(msg, info);
}

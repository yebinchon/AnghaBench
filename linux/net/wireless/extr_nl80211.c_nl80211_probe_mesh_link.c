
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct station_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int * dev_addr; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct ethhdr {int dummy; } ;
struct cfg80211_registered_device {int * dev_addr; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_2__ {int get_station; int probe_mesh_link; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int GENL_SET_ERR_MSG (struct genl_info*,char*) ;
 size_t NL80211_ATTR_FRAME ;
 size_t NL80211_ATTR_MAC ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int ether_addr_equal (int const*,int *) ;
 scalar_t__ is_multicast_ether_addr (int const*) ;
 void* nla_data (int ) ;
 size_t nla_len (int ) ;
 int rdev_get_station (struct net_device*,struct net_device*,int *,struct station_info*) ;
 int rdev_probe_mesh_link (struct net_device*,struct net_device*,int *,int const*,size_t) ;

__attribute__((used)) static int nl80211_probe_mesh_link(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct station_info sinfo = {};
 const u8 *buf;
 size_t len;
 u8 *dest;
 int err;

 if (!rdev->ops->probe_mesh_link || !rdev->ops->get_station)
  return -EOPNOTSUPP;

 if (!info->attrs[NL80211_ATTR_MAC] ||
     !info->attrs[NL80211_ATTR_FRAME]) {
  GENL_SET_ERR_MSG(info, "Frame or MAC missing");
  return -EINVAL;
 }

 if (wdev->iftype != NL80211_IFTYPE_MESH_POINT)
  return -EOPNOTSUPP;

 dest = nla_data(info->attrs[NL80211_ATTR_MAC]);
 buf = nla_data(info->attrs[NL80211_ATTR_FRAME]);
 len = nla_len(info->attrs[NL80211_ATTR_FRAME]);

 if (len < sizeof(struct ethhdr))
  return -EINVAL;

 if (!ether_addr_equal(buf, dest) || is_multicast_ether_addr(buf) ||
     !ether_addr_equal(buf + ETH_ALEN, dev->dev_addr))
  return -EINVAL;

 err = rdev_get_station(rdev, dev, dest, &sinfo);
 if (err)
  return err;

 return rdev_probe_mesh_link(rdev, dev, dest, buf, len);
}

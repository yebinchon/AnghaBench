
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct ip_tunnel_info {int mode; } ;
struct TYPE_2__ {int (* ndo_fill_metadata_dst ) (struct net_device*,struct sk_buff*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int IP_TUNNEL_INFO_TX ;
 struct ip_tunnel_info* skb_tunnel_info_unclone (struct sk_buff*) ;
 int stub1 (struct net_device*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int dev_fill_metadata_dst(struct net_device *dev, struct sk_buff *skb)
{
 struct ip_tunnel_info *info;

 if (!dev->netdev_ops || !dev->netdev_ops->ndo_fill_metadata_dst)
  return -EINVAL;

 info = skb_tunnel_info_unclone(skb);
 if (!info)
  return -ENOMEM;
 if (unlikely(!(info->mode & IP_TUNNEL_INFO_TX)))
  return -EINVAL;

 return dev->netdev_ops->ndo_fill_metadata_dst(dev, skb);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int * attrs; } ;
struct batadv_priv {scalar_t__ soft_iface; } ;
struct batadv_hard_iface {scalar_t__ soft_iface; } ;


 size_t BATADV_ATTR_HARD_IFINDEX ;
 int EINVAL ;
 int ENODEV ;
 struct batadv_hard_iface* ERR_PTR (int ) ;
 struct batadv_hard_iface* batadv_hardif_get_by_netdev (struct net_device*) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct net_device* dev_get_by_index (struct net*,unsigned int) ;
 int dev_put (struct net_device*) ;
 unsigned int nla_get_u32 (int ) ;

__attribute__((used)) static struct batadv_hard_iface *
batadv_get_hardif_from_info(struct batadv_priv *bat_priv, struct net *net,
       struct genl_info *info)
{
 struct batadv_hard_iface *hard_iface;
 struct net_device *hard_dev;
 unsigned int hardif_index;

 if (!info->attrs[BATADV_ATTR_HARD_IFINDEX])
  return ERR_PTR(-EINVAL);

 hardif_index = nla_get_u32(info->attrs[BATADV_ATTR_HARD_IFINDEX]);

 hard_dev = dev_get_by_index(net, hardif_index);
 if (!hard_dev)
  return ERR_PTR(-ENODEV);

 hard_iface = batadv_hardif_get_by_netdev(hard_dev);
 if (!hard_iface)
  goto err_put_harddev;

 if (hard_iface->soft_iface != bat_priv->soft_iface)
  goto err_put_hardif;


 dev_put(hard_dev);

 return hard_iface;

err_put_hardif:
 batadv_hardif_put(hard_iface);
err_put_harddev:
 dev_put(hard_dev);

 return ERR_PTR(-EINVAL);
}

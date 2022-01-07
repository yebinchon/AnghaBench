
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_priv {int flags; } ;
struct net_device {int dummy; } ;


 int VLAN_FLAG_BRIDGE_BINDING ;
 int netif_stacked_transfer_operstate (struct net_device const*,struct net_device*) ;

__attribute__((used)) static void vlan_stacked_transfer_operstate(const struct net_device *rootdev,
         struct net_device *dev,
         struct vlan_dev_priv *vlan)
{
 if (!(vlan->flags & VLAN_FLAG_BRIDGE_BINDING))
  netif_stacked_transfer_operstate(rootdev, dev);
}

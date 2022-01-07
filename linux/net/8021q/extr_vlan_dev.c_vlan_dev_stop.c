
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_priv {int flags; struct net_device* real_dev; } ;
struct net_device {int flags; int dev_addr; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int VLAN_FLAG_BRIDGE_BINDING ;
 int dev_mc_unsync (struct net_device*,struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_uc_del (struct net_device*,int ) ;
 int dev_uc_unsync (struct net_device*,struct net_device*) ;
 int ether_addr_equal (int ,int ) ;
 int netif_carrier_off (struct net_device*) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static int vlan_dev_stop(struct net_device *dev)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 struct net_device *real_dev = vlan->real_dev;

 dev_mc_unsync(real_dev, dev);
 dev_uc_unsync(real_dev, dev);
 if (dev->flags & IFF_ALLMULTI)
  dev_set_allmulti(real_dev, -1);
 if (dev->flags & IFF_PROMISC)
  dev_set_promiscuity(real_dev, -1);

 if (!ether_addr_equal(dev->dev_addr, real_dev->dev_addr))
  dev_uc_del(real_dev, dev->dev_addr);

 if (!(vlan->flags & VLAN_FLAG_BRIDGE_BINDING))
  netif_carrier_off(dev);
 return 0;
}

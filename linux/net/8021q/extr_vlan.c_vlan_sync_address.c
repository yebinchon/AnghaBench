
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_priv {int real_dev_addr; } ;
struct net_device {int dev_addr; } ;


 int dev_uc_add (struct net_device*,int ) ;
 int dev_uc_del (struct net_device*,int ) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ vlan_dev_inherit_address (struct net_device*,struct net_device*) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static void vlan_sync_address(struct net_device *dev,
         struct net_device *vlandev)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(vlandev);


 if (ether_addr_equal(vlan->real_dev_addr, dev->dev_addr))
  return;


 if (vlan_dev_inherit_address(vlandev, dev))
  goto out;



 if (!ether_addr_equal(vlandev->dev_addr, vlan->real_dev_addr) &&
     ether_addr_equal(vlandev->dev_addr, dev->dev_addr))
  dev_uc_del(dev, vlandev->dev_addr);



 if (ether_addr_equal(vlandev->dev_addr, vlan->real_dev_addr) &&
     !ether_addr_equal(vlandev->dev_addr, dev->dev_addr))
  dev_uc_add(dev, vlandev->dev_addr);

out:
 ether_addr_copy(vlan->real_dev_addr, dev->dev_addr);
}

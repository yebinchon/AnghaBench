
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ type; scalar_t__ addr_len; int priv_flags; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ ETH_ALEN ;
 int IFF_DONT_BRIDGE ;
 int IFF_LOOPBACK ;
 scalar_t__ hsr_port_exists (struct net_device*) ;
 scalar_t__ is_hsr_master (struct net_device*) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int netdev_info (struct net_device*,char*) ;

__attribute__((used)) static int hsr_check_dev_ok(struct net_device *dev)
{

 if ((dev->flags & IFF_LOOPBACK) || dev->type != ARPHRD_ETHER ||
     dev->addr_len != ETH_ALEN) {
  netdev_info(dev, "Cannot use loopback or non-ethernet device as HSR slave.\n");
  return -EINVAL;
 }


 if (is_hsr_master(dev)) {
  netdev_info(dev, "Cannot create trees of HSR devices.\n");
  return -EINVAL;
 }

 if (hsr_port_exists(dev)) {
  netdev_info(dev, "This device is already a HSR slave.\n");
  return -EINVAL;
 }

 if (is_vlan_dev(dev)) {
  netdev_info(dev, "HSR on top of VLAN is not yet supported in this driver.\n");
  return -EINVAL;
 }

 if (dev->priv_flags & IFF_DONT_BRIDGE) {
  netdev_info(dev, "This device does not support bridging.\n");
  return -EOPNOTSUPP;
 }





 return 0;
}

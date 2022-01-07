
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;





 int vlan_proc_add_dev (struct net_device*) ;
 int vlan_proc_rem_dev (struct net_device*) ;

__attribute__((used)) static int __vlan_device_event(struct net_device *dev, unsigned long event)
{
 int err = 0;

 switch (event) {
 case 130:
  vlan_proc_rem_dev(dev);
  err = vlan_proc_add_dev(dev);
  break;
 case 129:
  err = vlan_proc_add_dev(dev);
  break;
 case 128:
  vlan_proc_rem_dev(dev);
  break;
 }

 return err;
}

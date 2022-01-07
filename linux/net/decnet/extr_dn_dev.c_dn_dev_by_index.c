
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dn_ptr; } ;
struct dn_dev {int dummy; } ;


 struct net_device* __dev_get_by_index (int *,int) ;
 int init_net ;
 struct dn_dev* rtnl_dereference (int ) ;

__attribute__((used)) static struct dn_dev *dn_dev_by_index(int ifindex)
{
 struct net_device *dev;
 struct dn_dev *dn_dev = ((void*)0);

 dev = __dev_get_by_index(&init_net, ifindex);
 if (dev)
  dn_dev = rtnl_dereference(dev->dn_ptr);

 return dn_dev;
}

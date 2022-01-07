
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int mrp_init_applicant (struct net_device*,int *) ;
 int vlan_mrp_app ;

int vlan_mvrp_init_applicant(struct net_device *dev)
{
 return mrp_init_applicant(dev, &vlan_mrp_app);
}

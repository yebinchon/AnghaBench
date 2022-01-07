
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int mrp_uninit_applicant (struct net_device*,int *) ;
 int vlan_mrp_app ;

void vlan_mvrp_uninit_applicant(struct net_device *dev)
{
 mrp_uninit_applicant(dev, &vlan_mrp_app);
}

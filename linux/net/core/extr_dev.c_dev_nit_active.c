
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ptype_all; } ;


 int list_empty (int *) ;
 int ptype_all ;

bool dev_nit_active(struct net_device *dev)
{
 return !list_empty(&ptype_all) || !list_empty(&dev->ptype_all);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mr_table {int maxvif; TYPE_1__* vif_table; } ;
struct TYPE_2__ {struct net_device* dev; } ;



__attribute__((used)) static int ip6mr_find_vif(struct mr_table *mrt, struct net_device *dev)
{
 int ct;

 for (ct = mrt->maxvif - 1; ct >= 0; ct--) {
  if (mrt->vif_table[ct].dev == dev)
   break;
 }
 return ct;
}

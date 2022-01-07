
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vif_device {struct net_device const* dev; } ;
struct net_device {int dummy; } ;
struct mr_table {struct vif_device* vif_table; } ;
struct TYPE_3__ {int minvif; int maxvif; int* ttls; } ;
struct TYPE_4__ {TYPE_1__ res; } ;
struct mr_mfc {TYPE_2__ mfc_un; } ;


 scalar_t__ VIF_EXISTS (struct mr_table const*,int) ;

__attribute__((used)) static bool mr_mfc_uses_dev(const struct mr_table *mrt,
       const struct mr_mfc *c,
       const struct net_device *dev)
{
 int ct;

 for (ct = c->mfc_un.res.minvif; ct < c->mfc_un.res.maxvif; ct++) {
  if (VIF_EXISTS(mrt, ct) && c->mfc_un.res.ttls[ct] < 255) {
   const struct vif_device *vif;

   vif = &mrt->vif_table[ct];
   if (vif->dev == dev)
    return 1;
  }
 }
 return 0;
}

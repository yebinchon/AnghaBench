
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * p; } ;
struct extended_perms {int len; TYPE_2__ drivers; } ;
struct TYPE_12__ {int specified; } ;
struct TYPE_10__ {TYPE_3__* xperms; } ;
struct TYPE_11__ {TYPE_4__ u; } ;
struct avtab_node {TYPE_6__ key; TYPE_5__ datum; } ;
struct TYPE_7__ {int * p; } ;
struct TYPE_9__ {scalar_t__ specified; int driver; TYPE_1__ perms; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int AVTAB_XPERMS_ALLOWED ;
 scalar_t__ AVTAB_XPERMS_IOCTLDRIVER ;
 scalar_t__ AVTAB_XPERMS_IOCTLFUNCTION ;
 int security_xperm_set (int *,int ) ;

void services_compute_xperms_drivers(
  struct extended_perms *xperms,
  struct avtab_node *node)
{
 unsigned int i;

 if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLDRIVER) {

  for (i = 0; i < ARRAY_SIZE(xperms->drivers.p); i++)
   xperms->drivers.p[i] |= node->datum.u.xperms->perms.p[i];
 } else if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLFUNCTION) {

  security_xperm_set(xperms->drivers.p,
     node->datum.u.xperms->driver);
 }


 if (node->key.specified & AVTAB_XPERMS_ALLOWED)
  xperms->len = 1;
}

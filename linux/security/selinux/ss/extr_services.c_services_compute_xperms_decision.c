
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct extended_perms_decision {scalar_t__ driver; TYPE_4__* dontaudit; int used; TYPE_2__* auditallow; TYPE_1__* allowed; } ;
struct TYPE_15__ {TYPE_6__* xperms; } ;
struct TYPE_16__ {TYPE_7__ u; } ;
struct TYPE_11__ {scalar_t__ specified; } ;
struct avtab_node {TYPE_8__ datum; TYPE_3__ key; } ;
struct TYPE_13__ {int * p; } ;
struct TYPE_14__ {scalar_t__ specified; scalar_t__ driver; TYPE_5__ perms; } ;
struct TYPE_12__ {int * p; } ;
struct TYPE_10__ {int * p; } ;
struct TYPE_9__ {int * p; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ AVTAB_XPERMS_ALLOWED ;
 scalar_t__ AVTAB_XPERMS_AUDITALLOW ;
 scalar_t__ AVTAB_XPERMS_DONTAUDIT ;
 scalar_t__ AVTAB_XPERMS_IOCTLDRIVER ;
 scalar_t__ AVTAB_XPERMS_IOCTLFUNCTION ;
 int BUG () ;
 int XPERMS_ALLOWED ;
 int XPERMS_AUDITALLOW ;
 int XPERMS_DONTAUDIT ;
 int memset (int *,int,int) ;
 int security_xperm_test (int *,scalar_t__) ;

void services_compute_xperms_decision(struct extended_perms_decision *xpermd,
     struct avtab_node *node)
{
 unsigned int i;

 if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLFUNCTION) {
  if (xpermd->driver != node->datum.u.xperms->driver)
   return;
 } else if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLDRIVER) {
  if (!security_xperm_test(node->datum.u.xperms->perms.p,
     xpermd->driver))
   return;
 } else {
  BUG();
 }

 if (node->key.specified == AVTAB_XPERMS_ALLOWED) {
  xpermd->used |= XPERMS_ALLOWED;
  if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLDRIVER) {
   memset(xpermd->allowed->p, 0xff,
     sizeof(xpermd->allowed->p));
  }
  if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLFUNCTION) {
   for (i = 0; i < ARRAY_SIZE(xpermd->allowed->p); i++)
    xpermd->allowed->p[i] |=
     node->datum.u.xperms->perms.p[i];
  }
 } else if (node->key.specified == AVTAB_XPERMS_AUDITALLOW) {
  xpermd->used |= XPERMS_AUDITALLOW;
  if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLDRIVER) {
   memset(xpermd->auditallow->p, 0xff,
     sizeof(xpermd->auditallow->p));
  }
  if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLFUNCTION) {
   for (i = 0; i < ARRAY_SIZE(xpermd->auditallow->p); i++)
    xpermd->auditallow->p[i] |=
     node->datum.u.xperms->perms.p[i];
  }
 } else if (node->key.specified == AVTAB_XPERMS_DONTAUDIT) {
  xpermd->used |= XPERMS_DONTAUDIT;
  if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLDRIVER) {
   memset(xpermd->dontaudit->p, 0xff,
     sizeof(xpermd->dontaudit->p));
  }
  if (node->datum.u.xperms->specified == AVTAB_XPERMS_IOCTLFUNCTION) {
   for (i = 0; i < ARRAY_SIZE(xpermd->dontaudit->p); i++)
    xpermd->dontaudit->p[i] |=
     node->datum.u.xperms->perms.p[i];
  }
 } else {
  BUG();
 }
}

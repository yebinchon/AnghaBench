
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct extended_perms {int dummy; } ;
struct TYPE_6__ {int specified; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
struct avtab_node {TYPE_3__ key; TYPE_2__ datum; } ;
struct avtab_key {int specified; } ;
struct avtab {int dummy; } ;
struct av_decision {int auditallow; int auditdeny; int allowed; } ;


 int AVTAB_ALLOWED ;
 int AVTAB_AUDITALLOW ;
 int AVTAB_AUDITDENY ;
 int AVTAB_ENABLED ;
 int AVTAB_XPERMS ;
 struct avtab_node* avtab_search_node (struct avtab*,struct avtab_key*) ;
 struct avtab_node* avtab_search_node_next (struct avtab_node*,int ) ;
 int services_compute_xperms_drivers (struct extended_perms*,struct avtab_node*) ;

void cond_compute_av(struct avtab *ctab, struct avtab_key *key,
  struct av_decision *avd, struct extended_perms *xperms)
{
 struct avtab_node *node;

 if (!ctab || !key || !avd)
  return;

 for (node = avtab_search_node(ctab, key); node;
    node = avtab_search_node_next(node, key->specified)) {
  if ((u16)(AVTAB_ALLOWED|AVTAB_ENABLED) ==
      (node->key.specified & (AVTAB_ALLOWED|AVTAB_ENABLED)))
   avd->allowed |= node->datum.u.data;
  if ((u16)(AVTAB_AUDITDENY|AVTAB_ENABLED) ==
      (node->key.specified & (AVTAB_AUDITDENY|AVTAB_ENABLED)))





   avd->auditdeny &= node->datum.u.data;
  if ((u16)(AVTAB_AUDITALLOW|AVTAB_ENABLED) ==
      (node->key.specified & (AVTAB_AUDITALLOW|AVTAB_ENABLED)))
   avd->auditallow |= node->datum.u.data;
  if (xperms && (node->key.specified & AVTAB_ENABLED) &&
    (node->key.specified & AVTAB_XPERMS))
   services_compute_xperms_drivers(xperms, node);
 }
}

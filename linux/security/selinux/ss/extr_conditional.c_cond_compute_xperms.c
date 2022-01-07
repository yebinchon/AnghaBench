
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extended_perms_decision {int dummy; } ;
struct TYPE_2__ {int specified; } ;
struct avtab_node {TYPE_1__ key; } ;
struct avtab_key {int specified; } ;
struct avtab {int dummy; } ;


 int AVTAB_ENABLED ;
 struct avtab_node* avtab_search_node (struct avtab*,struct avtab_key*) ;
 struct avtab_node* avtab_search_node_next (struct avtab_node*,int ) ;
 int services_compute_xperms_decision (struct extended_perms_decision*,struct avtab_node*) ;

void cond_compute_xperms(struct avtab *ctab, struct avtab_key *key,
  struct extended_perms_decision *xpermd)
{
 struct avtab_node *node;

 if (!ctab || !key || !xpermd)
  return;

 for (node = avtab_search_node(ctab, key); node;
   node = avtab_search_node_next(node, key->specified)) {
  if (node->key.specified & AVTAB_ENABLED)
   services_compute_xperms_decision(xpermd, node);
 }
 return;

}

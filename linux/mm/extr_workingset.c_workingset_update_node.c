
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_node {scalar_t__ count; scalar_t__ nr_values; int private_list; } ;


 int VM_WARN_ON_ONCE (int) ;
 int WORKINGSET_NODES ;
 int __dec_lruvec_slab_state (struct xa_node*,int ) ;
 int __inc_lruvec_slab_state (struct xa_node*,int ) ;
 int irqs_disabled () ;
 scalar_t__ list_empty (int *) ;
 int list_lru_add (int *,int *) ;
 int list_lru_del (int *,int *) ;
 int shadow_nodes ;

void workingset_update_node(struct xa_node *node)
{
 VM_WARN_ON_ONCE(!irqs_disabled());

 if (node->count && node->count == node->nr_values) {
  if (list_empty(&node->private_list)) {
   list_lru_add(&shadow_nodes, &node->private_list);
   __inc_lruvec_slab_state(node, WORKINGSET_NODES);
  }
 } else {
  if (!list_empty(&node->private_list)) {
   list_lru_del(&shadow_nodes, &node->private_list);
   __dec_lruvec_slab_state(node, WORKINGSET_NODES);
  }
 }
}

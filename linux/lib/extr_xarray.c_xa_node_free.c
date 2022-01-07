
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_node {int rcu_head; int array; int private_list; } ;


 int XA_NODE_BUG_ON (struct xa_node*,int) ;
 int XA_RCU_FREE ;
 int call_rcu (int *,int ) ;
 int list_empty (int *) ;
 int radix_tree_node_rcu_free ;

__attribute__((used)) static void xa_node_free(struct xa_node *node)
{
 XA_NODE_BUG_ON(node, !list_empty(&node->private_list));
 node->array = XA_RCU_FREE;
 call_rcu(&node->rcu_head, radix_tree_node_rcu_free);
}

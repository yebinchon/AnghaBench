
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {int rcu_head; } ;


 int call_rcu (int *,int ) ;
 int radix_tree_node_rcu_free ;

__attribute__((used)) static inline void
radix_tree_node_free(struct radix_tree_node *node)
{
 call_rcu(&node->rcu_head, radix_tree_node_rcu_free);
}

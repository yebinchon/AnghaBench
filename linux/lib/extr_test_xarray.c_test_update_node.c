
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_node {scalar_t__ count; scalar_t__ nr_values; int private_list; } ;


 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int shadow_nodes ;

__attribute__((used)) static void test_update_node(struct xa_node *node)
{
 if (node->count && node->count == node->nr_values) {
  if (list_empty(&node->private_list))
   list_add(&shadow_nodes, &node->private_list);
 } else {
  if (!list_empty(&node->private_list))
   list_del_init(&node->private_list);
 }
}

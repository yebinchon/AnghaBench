
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {int private_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct radix_tree_node*,int ,int) ;

__attribute__((used)) static void
radix_tree_node_ctor(void *arg)
{
 struct radix_tree_node *node = arg;

 memset(node, 0, sizeof(*node));
 INIT_LIST_HEAD(&node->private_list);
}

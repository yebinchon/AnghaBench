
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_node* next; } ;


 scalar_t__ cgraph_function_with_gimple_body_p (struct cgraph_node*) ;
 struct cgraph_node* cgraph_nodes ;

__attribute__((used)) static inline struct cgraph_node *cgraph_first_function_with_gimple_body(void)
{
 struct cgraph_node *node;

 for (node = cgraph_nodes; node; node = node->next)
  if (cgraph_function_with_gimple_body_p(node))
   return node;
 return ((void*)0);
}

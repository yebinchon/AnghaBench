
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_node {int dummy; } ;


 struct cgraph_node* cgraph_get_node (int ) ;
 struct cgraph_node* cgraph_node (int ) ;

__attribute__((used)) static inline struct cgraph_node *cgraph_get_create_node(tree decl)
{
 struct cgraph_node *node = cgraph_get_node(decl);

 return node ? node : cgraph_node(decl);
}

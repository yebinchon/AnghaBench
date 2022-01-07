
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {scalar_t__ xa_shift; } ;
struct xa_node {scalar_t__ shift; } ;


 scalar_t__ xa_is_node (void*) ;
 struct xa_node* xa_to_node (void*) ;
 void* xas_descend (struct xa_state*,struct xa_node*) ;
 void* xas_start (struct xa_state*) ;

void *xas_load(struct xa_state *xas)
{
 void *entry = xas_start(xas);

 while (xa_is_node(entry)) {
  struct xa_node *node = xa_to_node(entry);

  if (xas->xa_shift > node->shift)
   break;
  entry = xas_descend(xas, node);
  if (node->shift == 0)
   break;
 }
 return entry;
}

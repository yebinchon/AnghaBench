
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct xa_state {scalar_t__ xa_shift; int xa_offset; int xa_sibs; TYPE_1__* xa_node; int xa; } ;
struct xa_node {int dummy; } ;
struct TYPE_5__ {scalar_t__ shift; int offset; } ;


 int XA_CHUNK_MASK ;
 void* xa_entry_locked (int ,TYPE_1__*,int) ;
 scalar_t__ xa_is_node (void*) ;
 scalar_t__ xa_is_sibling (void*) ;
 TYPE_1__* xa_parent_locked (int ,TYPE_1__*) ;
 void* xa_to_node (void*) ;
 void* xas_descend (struct xa_state*,struct xa_node*) ;
 scalar_t__ xas_error (struct xa_state*) ;
 void* xas_start (struct xa_state*) ;
 scalar_t__ xas_top (TYPE_1__*) ;

void *xas_find_conflict(struct xa_state *xas)
{
 void *curr;

 if (xas_error(xas))
  return ((void*)0);

 if (!xas->xa_node)
  return ((void*)0);

 if (xas_top(xas->xa_node)) {
  curr = xas_start(xas);
  if (!curr)
   return ((void*)0);
  while (xa_is_node(curr)) {
   struct xa_node *node = xa_to_node(curr);
   curr = xas_descend(xas, node);
  }
  if (curr)
   return curr;
 }

 if (xas->xa_node->shift > xas->xa_shift)
  return ((void*)0);

 for (;;) {
  if (xas->xa_node->shift == xas->xa_shift) {
   if ((xas->xa_offset & xas->xa_sibs) == xas->xa_sibs)
    break;
  } else if (xas->xa_offset == XA_CHUNK_MASK) {
   xas->xa_offset = xas->xa_node->offset;
   xas->xa_node = xa_parent_locked(xas->xa, xas->xa_node);
   if (!xas->xa_node)
    break;
   continue;
  }
  curr = xa_entry_locked(xas->xa, xas->xa_node, ++xas->xa_offset);
  if (xa_is_sibling(curr))
   continue;
  while (xa_is_node(curr)) {
   xas->xa_node = xa_to_node(curr);
   xas->xa_offset = 0;
   curr = xa_entry_locked(xas->xa, xas->xa_node, 0);
  }
  if (curr)
   return curr;
 }
 xas->xa_offset -= xas->xa_sibs;
 return ((void*)0);
}

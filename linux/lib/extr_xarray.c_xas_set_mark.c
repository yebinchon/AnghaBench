
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xa_mark_t ;
struct xa_state {unsigned int xa_offset; int xa; struct xa_node* xa_node; } ;
struct xa_node {unsigned int offset; } ;


 scalar_t__ node_set_mark (struct xa_node*,unsigned int,int ) ;
 int xa_mark_set (int ,int ) ;
 int xa_marked (int ,int ) ;
 struct xa_node* xa_parent_locked (int ,struct xa_node*) ;
 scalar_t__ xas_invalid (struct xa_state const*) ;

void xas_set_mark(const struct xa_state *xas, xa_mark_t mark)
{
 struct xa_node *node = xas->xa_node;
 unsigned int offset = xas->xa_offset;

 if (xas_invalid(xas))
  return;

 while (node) {
  if (node_set_mark(node, offset, mark))
   return;
  offset = node->offset;
  node = xa_parent_locked(xas->xa, node);
 }

 if (!xa_marked(xas->xa, mark))
  xa_mark_set(xas->xa, mark);
}

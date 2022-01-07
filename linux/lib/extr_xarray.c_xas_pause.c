
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {unsigned int xa_offset; struct xa_node* xa_node; scalar_t__ xa_index; int xa; } ;
struct xa_node {unsigned int shift; } ;


 struct xa_node* XAS_RESTART ;
 unsigned int XA_CHUNK_SIZE ;
 int xa_entry (int ,struct xa_node*,unsigned int) ;
 int xa_is_sibling (int ) ;
 scalar_t__ xas_invalid (struct xa_state*) ;

void xas_pause(struct xa_state *xas)
{
 struct xa_node *node = xas->xa_node;

 if (xas_invalid(xas))
  return;

 if (node) {
  unsigned int offset = xas->xa_offset;
  while (++offset < XA_CHUNK_SIZE) {
   if (!xa_is_sibling(xa_entry(xas->xa, node, offset)))
    break;
  }
  xas->xa_index += (offset - xas->xa_offset) << node->shift;
 } else {
  xas->xa_index++;
 }
 xas->xa_node = XAS_RESTART;
}

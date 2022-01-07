
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xa_mark_t ;
struct xa_state {int xa_index; int xa_offset; TYPE_1__* xa_node; int xa; } ;
struct TYPE_6__ {int shift; unsigned int offset; } ;


 TYPE_1__* XAS_RESTART ;
 unsigned int XA_CHUNK_SIZE ;
 scalar_t__ max_index (void*) ;
 void* set_bounds (struct xa_state*) ;
 scalar_t__ unlikely (int) ;
 void* xa_entry (int ,TYPE_1__*,unsigned int) ;
 void* xa_head (int ) ;
 int xa_is_node (void*) ;
 scalar_t__ xa_is_sibling (void*) ;
 scalar_t__ xa_marked (int ,int ) ;
 TYPE_1__* xa_parent (int ,TYPE_1__*) ;
 void* xa_to_node (void*) ;
 unsigned int xa_to_sibling (void*) ;
 scalar_t__ xas_error (struct xa_state*) ;
 unsigned int xas_find_chunk (struct xa_state*,int,int ) ;
 int xas_move_index (struct xa_state*,unsigned int) ;
 int xas_set_offset (struct xa_state*) ;
 scalar_t__ xas_top (TYPE_1__*) ;

void *xas_find_marked(struct xa_state *xas, unsigned long max, xa_mark_t mark)
{
 bool advance = 1;
 unsigned int offset;
 void *entry;

 if (xas_error(xas))
  return ((void*)0);

 if (!xas->xa_node) {
  xas->xa_index = 1;
  goto out;
 } else if (xas_top(xas->xa_node)) {
  advance = 0;
  entry = xa_head(xas->xa);
  xas->xa_node = ((void*)0);
  if (xas->xa_index > max_index(entry))
   goto out;
  if (!xa_is_node(entry)) {
   if (xa_marked(xas->xa, mark))
    return entry;
   xas->xa_index = 1;
   goto out;
  }
  xas->xa_node = xa_to_node(entry);
  xas->xa_offset = xas->xa_index >> xas->xa_node->shift;
 }

 while (xas->xa_index <= max) {
  if (unlikely(xas->xa_offset == XA_CHUNK_SIZE)) {
   xas->xa_offset = xas->xa_node->offset + 1;
   xas->xa_node = xa_parent(xas->xa, xas->xa_node);
   if (!xas->xa_node)
    break;
   advance = 0;
   continue;
  }

  if (!advance) {
   entry = xa_entry(xas->xa, xas->xa_node, xas->xa_offset);
   if (xa_is_sibling(entry)) {
    xas->xa_offset = xa_to_sibling(entry);
    xas_move_index(xas, xas->xa_offset);
   }
  }

  offset = xas_find_chunk(xas, advance, mark);
  if (offset > xas->xa_offset) {
   advance = 0;
   xas_move_index(xas, offset);

   if ((xas->xa_index - 1) >= max)
    goto max;
   xas->xa_offset = offset;
   if (offset == XA_CHUNK_SIZE)
    continue;
  }

  entry = xa_entry(xas->xa, xas->xa_node, xas->xa_offset);
  if (!xa_is_node(entry))
   return entry;
  xas->xa_node = xa_to_node(entry);
  xas_set_offset(xas);
 }

out:
 if (xas->xa_index > max)
  goto max;
 return set_bounds(xas);
max:
 xas->xa_node = XAS_RESTART;
 return ((void*)0);
}

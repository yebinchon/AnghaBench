
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assoc_array_shortcut {int parent_slot; int back_pointer; int next_node; } ;
struct assoc_array_ptr {int dummy; } ;
struct assoc_array_node {int parent_slot; int back_pointer; int * slots; } ;


 int ASSOC_ARRAY_FAN_OUT ;
 unsigned long ASSOC_ARRAY_PTR_META_TYPE ;
 struct assoc_array_ptr* READ_ONCE (int ) ;
 scalar_t__ assoc_array_ptr_is_leaf (struct assoc_array_ptr const*) ;
 scalar_t__ assoc_array_ptr_is_meta (struct assoc_array_ptr const*) ;
 scalar_t__ assoc_array_ptr_is_shortcut (struct assoc_array_ptr const*) ;
 void const* assoc_array_ptr_to_leaf (struct assoc_array_ptr const*) ;
 struct assoc_array_node* assoc_array_ptr_to_node (struct assoc_array_ptr const*) ;
 struct assoc_array_shortcut* assoc_array_ptr_to_shortcut (struct assoc_array_ptr const*) ;

__attribute__((used)) static int assoc_array_subtree_iterate(const struct assoc_array_ptr *root,
           const struct assoc_array_ptr *stop,
           int (*iterator)(const void *leaf,
             void *iterator_data),
           void *iterator_data)
{
 const struct assoc_array_shortcut *shortcut;
 const struct assoc_array_node *node;
 const struct assoc_array_ptr *cursor, *ptr, *parent;
 unsigned long has_meta;
 int slot, ret;

 cursor = root;

begin_node:
 if (assoc_array_ptr_is_shortcut(cursor)) {

  shortcut = assoc_array_ptr_to_shortcut(cursor);
  cursor = READ_ONCE(shortcut->next_node);
 }

 node = assoc_array_ptr_to_node(cursor);
 slot = 0;
 has_meta = 0;
 for (; slot < ASSOC_ARRAY_FAN_OUT; slot++) {
  ptr = READ_ONCE(node->slots[slot]);
  has_meta |= (unsigned long)ptr;
  if (ptr && assoc_array_ptr_is_leaf(ptr)) {




   ret = iterator(assoc_array_ptr_to_leaf(ptr),
           iterator_data);
   if (ret)
    return ret;
  }
 }
 if (!(has_meta & ASSOC_ARRAY_PTR_META_TYPE))
  goto finished_node;
 slot = 0;

continue_node:
 node = assoc_array_ptr_to_node(cursor);
 for (; slot < ASSOC_ARRAY_FAN_OUT; slot++) {
  ptr = READ_ONCE(node->slots[slot]);
  if (assoc_array_ptr_is_meta(ptr)) {
   cursor = ptr;
   goto begin_node;
  }
 }

finished_node:

 parent = READ_ONCE(node->back_pointer);
 slot = node->parent_slot;
 if (parent == stop)
  return 0;

 if (assoc_array_ptr_is_shortcut(parent)) {
  shortcut = assoc_array_ptr_to_shortcut(parent);
  cursor = parent;
  parent = READ_ONCE(shortcut->back_pointer);
  slot = shortcut->parent_slot;
  if (parent == stop)
   return 0;
 }


 cursor = parent;
 slot++;
 goto continue_node;
}

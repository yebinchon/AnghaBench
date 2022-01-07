
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct assoc_array_node* node; } ;
struct assoc_array_walk_result {TYPE_1__ terminal_node; } ;
struct assoc_array_ptr {int dummy; } ;
struct assoc_array_ops {scalar_t__ (* compare_object ) (void const*,void const*) ;} ;
struct assoc_array_node {int * slots; } ;
struct assoc_array {int dummy; } ;


 int ASSOC_ARRAY_FAN_OUT ;
 struct assoc_array_ptr* READ_ONCE (int ) ;
 scalar_t__ assoc_array_ptr_is_leaf (struct assoc_array_ptr const*) ;
 void* assoc_array_ptr_to_leaf (struct assoc_array_ptr const*) ;
 scalar_t__ assoc_array_walk (struct assoc_array const*,struct assoc_array_ops const*,void const*,struct assoc_array_walk_result*) ;
 scalar_t__ assoc_array_walk_found_terminal_node ;
 scalar_t__ stub1 (void const*,void const*) ;

void *assoc_array_find(const struct assoc_array *array,
         const struct assoc_array_ops *ops,
         const void *index_key)
{
 struct assoc_array_walk_result result;
 const struct assoc_array_node *node;
 const struct assoc_array_ptr *ptr;
 const void *leaf;
 int slot;

 if (assoc_array_walk(array, ops, index_key, &result) !=
     assoc_array_walk_found_terminal_node)
  return ((void*)0);

 node = result.terminal_node.node;




 for (slot = 0; slot < ASSOC_ARRAY_FAN_OUT; slot++) {
  ptr = READ_ONCE(node->slots[slot]);
  if (ptr && assoc_array_ptr_is_leaf(ptr)) {




   leaf = assoc_array_ptr_to_leaf(ptr);
   if (ops->compare_object(leaf, index_key))
    return (void *)leaf;
  }
 }

 return ((void*)0);
}

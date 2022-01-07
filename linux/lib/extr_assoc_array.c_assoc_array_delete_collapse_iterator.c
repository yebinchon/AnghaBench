
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct assoc_array_delete_collapse_context {void const* skip_leaf; scalar_t__ slot; TYPE_1__* node; } ;
struct TYPE_2__ {int * slots; } ;


 scalar_t__ ASSOC_ARRAY_FAN_OUT ;
 int BUG_ON (int) ;
 int assoc_array_leaf_to_ptr (void const*) ;

__attribute__((used)) static int assoc_array_delete_collapse_iterator(const void *leaf,
      void *iterator_data)
{
 struct assoc_array_delete_collapse_context *collapse = iterator_data;

 if (leaf == collapse->skip_leaf)
  return 0;

 BUG_ON(collapse->slot >= ASSOC_ARRAY_FAN_OUT);

 collapse->node->slots[collapse->slot++] = assoc_array_leaf_to_ptr(leaf);
 return 0;
}

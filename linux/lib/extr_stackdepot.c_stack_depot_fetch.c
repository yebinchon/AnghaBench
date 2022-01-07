
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union handle_parts {size_t slabindex; size_t offset; int handle; } ;
struct stack_record {unsigned long* entries; unsigned int size; } ;
typedef int depot_stack_handle_t ;


 size_t STACK_ALLOC_ALIGN ;
 void** stack_slabs ;

unsigned int stack_depot_fetch(depot_stack_handle_t handle,
          unsigned long **entries)
{
 union handle_parts parts = { .handle = handle };
 void *slab = stack_slabs[parts.slabindex];
 size_t offset = parts.offset << STACK_ALLOC_ALIGN;
 struct stack_record *stack = slab + offset;

 *entries = stack->entries;
 return stack->size;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct intel_pt_stack {size_t pos; TYPE_1__* blk; } ;
struct TYPE_2__ {int * ip; } ;


 size_t INTEL_PT_BLK_SIZE ;
 int intel_pt_pop_blk (struct intel_pt_stack*) ;

__attribute__((used)) static uint64_t intel_pt_pop(struct intel_pt_stack *stack)
{
 if (!stack->pos) {
  if (!stack->blk)
   return 0;
  intel_pt_pop_blk(stack);
  if (!stack->blk)
   return 0;
  stack->pos = INTEL_PT_BLK_SIZE;
 }
 return stack->blk->ip[--stack->pos];
}

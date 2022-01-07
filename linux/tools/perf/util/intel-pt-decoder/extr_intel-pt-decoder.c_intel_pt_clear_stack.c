
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_stack {scalar_t__ pos; scalar_t__ blk; } ;


 int intel_pt_pop_blk (struct intel_pt_stack*) ;

__attribute__((used)) static void intel_pt_clear_stack(struct intel_pt_stack *stack)
{
 while (stack->blk)
  intel_pt_pop_blk(stack);
 stack->pos = 0;
}

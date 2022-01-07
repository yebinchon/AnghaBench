
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_stack {int spare; int blk; } ;


 int intel_pt_clear_stack (struct intel_pt_stack*) ;
 int zfree (int *) ;

__attribute__((used)) static void intel_pt_free_stack(struct intel_pt_stack *stack)
{
 intel_pt_clear_stack(stack);
 zfree(&stack->blk);
 zfree(&stack->spare);
}

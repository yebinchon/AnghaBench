
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_stack {struct intel_pt_blk* spare; struct intel_pt_blk* blk; } ;
struct intel_pt_blk {struct intel_pt_blk* prev; } ;


 int free (struct intel_pt_blk*) ;

__attribute__((used)) static void intel_pt_pop_blk(struct intel_pt_stack *stack)
{
 struct intel_pt_blk *blk = stack->blk;

 stack->blk = blk->prev;
 if (!stack->spare)
  stack->spare = blk;
 else
  free(blk);
}

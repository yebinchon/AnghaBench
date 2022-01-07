
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct intel_pt_stack {scalar_t__ pos; TYPE_1__* blk; } ;
struct TYPE_2__ {int * ip; } ;


 scalar_t__ INTEL_PT_BLK_SIZE ;
 int intel_pt_alloc_blk (struct intel_pt_stack*) ;

__attribute__((used)) static int intel_pt_push(struct intel_pt_stack *stack, uint64_t ip)
{
 int err;

 if (!stack->blk || stack->pos == INTEL_PT_BLK_SIZE) {
  err = intel_pt_alloc_blk(stack);
  if (err)
   return err;
 }

 stack->blk->ip[stack->pos++] = ip;
 return 0;
}

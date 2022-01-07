
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u16 ;
struct pt_regs {int dummy; } ;


 scalar_t__ USHRT_MAX ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ perf_ustack_task_size (struct pt_regs*) ;
 scalar_t__ round_up (scalar_t__,int) ;

__attribute__((used)) static u16
perf_sample_ustack_size(u16 stack_size, u16 header_size,
   struct pt_regs *regs)
{
 u64 task_size;


 if (!regs)
  return 0;
 task_size = min((u64) USHRT_MAX, perf_ustack_task_size(regs));
 stack_size = min(stack_size, (u16) task_size);


 header_size += 2 * sizeof(u64);


 if ((u16) (header_size + stack_size) < header_size) {




  stack_size = USHRT_MAX - header_size - sizeof(u64);
  stack_size = round_up(stack_size, sizeof(u64));
 }

 return stack_size;
}

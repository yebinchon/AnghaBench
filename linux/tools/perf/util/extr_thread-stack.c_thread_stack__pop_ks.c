
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread_stack {int cnt; } ;
struct thread {int dummy; } ;
struct perf_sample {int time; } ;


 int thread_stack__call_return (struct thread*,struct thread_stack*,int ,int ,int ,int) ;
 scalar_t__ thread_stack__in_kernel (struct thread_stack*) ;

__attribute__((used)) static int thread_stack__pop_ks(struct thread *thread, struct thread_stack *ts,
    struct perf_sample *sample, u64 ref)
{
 u64 tm = sample->time;
 int err;


 while (thread_stack__in_kernel(ts)) {
  err = thread_stack__call_return(thread, ts, --ts->cnt,
      tm, ref, 1);
  if (err)
   return err;
 }

 return 0;
}

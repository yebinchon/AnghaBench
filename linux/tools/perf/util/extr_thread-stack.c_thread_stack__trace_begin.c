
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread_stack_entry {scalar_t__ trace_end; } ;
struct thread_stack {int cnt; struct thread_stack_entry* stack; } ;
struct thread {int dummy; } ;


 int thread_stack__call_return (struct thread*,struct thread_stack*,int,int ,int ,int) ;

__attribute__((used)) static int thread_stack__trace_begin(struct thread *thread,
         struct thread_stack *ts, u64 timestamp,
         u64 ref)
{
 struct thread_stack_entry *tse;
 int err;

 if (!ts->cnt)
  return 0;


 tse = &ts->stack[ts->cnt - 1];
 if (tse->trace_end) {
  err = thread_stack__call_return(thread, ts, --ts->cnt,
      timestamp, ref, 0);
  if (err)
   return err;
 }

 return 0;
}

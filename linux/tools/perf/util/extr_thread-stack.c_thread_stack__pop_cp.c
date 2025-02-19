
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct thread_stack_entry {scalar_t__ ret_addr; scalar_t__ non_call; TYPE_1__* cp; } ;
struct thread_stack {int cnt; struct thread_stack_entry* stack; } ;
struct thread {int dummy; } ;
struct symbol {int dummy; } ;
struct TYPE_2__ {struct symbol* sym; } ;


 int thread_stack__call_return (struct thread*,struct thread_stack*,int,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int thread_stack__pop_cp(struct thread *thread, struct thread_stack *ts,
    u64 ret_addr, u64 timestamp, u64 ref,
    struct symbol *sym)
{
 int err;

 if (!ts->cnt)
  return 1;

 if (ts->cnt == 1) {
  struct thread_stack_entry *tse = &ts->stack[0];

  if (tse->cp->sym == sym)
   return thread_stack__call_return(thread, ts, --ts->cnt,
        timestamp, ref, 0);
 }

 if (ts->stack[ts->cnt - 1].ret_addr == ret_addr &&
     !ts->stack[ts->cnt - 1].non_call) {
  return thread_stack__call_return(thread, ts, --ts->cnt,
       timestamp, ref, 0);
 } else {
  size_t i = ts->cnt - 1;

  while (i--) {
   if (ts->stack[i].ret_addr != ret_addr ||
       ts->stack[i].non_call)
    continue;
   i += 1;
   while (ts->cnt > i) {
    err = thread_stack__call_return(thread, ts,
        --ts->cnt,
        timestamp, ref,
        1);
    if (err)
     return err;
   }
   return thread_stack__call_return(thread, ts, --ts->cnt,
        timestamp, ref, 0);
  }
 }

 return 1;
}

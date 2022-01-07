
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct thread_stack {size_t cnt; size_t sz; TYPE_1__* stack; } ;
struct TYPE_2__ {int trace_end; int ret_addr; } ;


 int pr_warning (char*) ;
 int thread_stack__grow (struct thread_stack*) ;

__attribute__((used)) static int thread_stack__push(struct thread_stack *ts, u64 ret_addr,
         bool trace_end)
{
 int err = 0;

 if (ts->cnt == ts->sz) {
  err = thread_stack__grow(ts);
  if (err) {
   pr_warning("Out of memory: discarding thread stack\n");
   ts->cnt = 0;
  }
 }

 ts->stack[ts->cnt].trace_end = trace_end;
 ts->stack[ts->cnt++].ret_addr = ret_addr;

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_stack {scalar_t__ cnt; int last_time; struct call_return_processor* crp; } ;
struct thread {int dummy; } ;
struct call_return_processor {int dummy; } ;


 int pr_err (char*) ;
 int thread_stack__call_return (struct thread*,struct thread_stack*,scalar_t__,int ,int ,int) ;

__attribute__((used)) static int __thread_stack__flush(struct thread *thread, struct thread_stack *ts)
{
 struct call_return_processor *crp = ts->crp;
 int err;

 if (!crp) {
  ts->cnt = 0;
  return 0;
 }

 while (ts->cnt) {
  err = thread_stack__call_return(thread, ts, --ts->cnt,
      ts->last_time, 0, 1);
  if (err) {
   pr_err("Error flushing thread stack!\n");
   ts->cnt = 0;
   return err;
  }
 }

 return 0;
}

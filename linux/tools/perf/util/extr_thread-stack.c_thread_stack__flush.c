
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_stack {unsigned int arr_sz; } ;
struct thread {struct thread_stack* ts; } ;


 int __thread_stack__flush (struct thread*,struct thread_stack*) ;

int thread_stack__flush(struct thread *thread)
{
 struct thread_stack *ts = thread->ts;
 unsigned int pos;
 int err = 0;

 if (ts) {
  for (pos = 0; pos < ts->arr_sz; pos++) {
   int ret = __thread_stack__flush(thread, ts + pos);

   if (ret)
    err = ret;
  }
 }

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_stack {unsigned int arr_sz; } ;
struct thread {struct thread_stack* ts; } ;


 int __thread_stack__free (struct thread*,struct thread_stack*) ;
 int zfree (struct thread_stack**) ;

void thread_stack__free(struct thread *thread)
{
 struct thread_stack *ts = thread->ts;
 unsigned int pos;

 if (ts) {
  for (pos = 0; pos < ts->arr_sz; pos++)
   __thread_stack__free(thread, ts + pos);
  zfree(&thread->ts);
 }
}

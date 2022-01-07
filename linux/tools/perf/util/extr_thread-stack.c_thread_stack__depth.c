
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_stack {size_t cnt; } ;
struct thread {int dummy; } ;


 struct thread_stack* thread__stack (struct thread*,int) ;

size_t thread_stack__depth(struct thread *thread, int cpu)
{
 struct thread_stack *ts = thread__stack(thread, cpu);

 if (!ts)
  return 0;
 return ts->cnt;
}

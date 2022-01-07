
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_stack {unsigned int arr_sz; int stack; } ;
struct thread {struct thread_stack* ts; } ;



__attribute__((used)) static struct thread_stack *thread__cpu_stack(struct thread *thread, int cpu)
{
 struct thread_stack *ts = thread->ts;

 if (cpu < 0)
  cpu = 0;

 if (!ts || (unsigned int)cpu >= ts->arr_sz)
  return ((void*)0);

 ts += cpu;

 if (!ts->stack)
  return ((void*)0);

 return ts;
}

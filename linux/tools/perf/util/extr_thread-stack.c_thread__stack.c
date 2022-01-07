
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_stack {int dummy; } ;
struct thread {struct thread_stack* ts; } ;


 struct thread_stack* thread__cpu_stack (struct thread*,int) ;
 scalar_t__ thread_stack__per_cpu (struct thread*) ;

__attribute__((used)) static inline struct thread_stack *thread__stack(struct thread *thread,
          int cpu)
{
 if (!thread)
  return ((void*)0);

 if (thread_stack__per_cpu(thread))
  return thread__cpu_stack(thread, cpu);

 return thread->ts;
}

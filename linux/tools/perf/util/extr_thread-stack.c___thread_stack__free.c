
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_stack {int stack; } ;
struct thread {int dummy; } ;


 int __thread_stack__flush (struct thread*,struct thread_stack*) ;
 int zfree (int *) ;

__attribute__((used)) static void __thread_stack__free(struct thread *thread, struct thread_stack *ts)
{
 __thread_stack__flush(thread, ts);
 zfree(&ts->stack);
}

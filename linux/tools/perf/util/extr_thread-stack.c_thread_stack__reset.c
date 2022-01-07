
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_stack {unsigned int arr_sz; } ;
struct thread {int dummy; } ;


 int __thread_stack__free (struct thread*,struct thread_stack*) ;
 int memset (struct thread_stack*,int ,int) ;

__attribute__((used)) static void thread_stack__reset(struct thread *thread, struct thread_stack *ts)
{
 unsigned int arr_sz = ts->arr_sz;

 __thread_stack__free(thread, ts);
 memset(ts, 0, sizeof(*ts));
 ts->arr_sz = arr_sz;
}

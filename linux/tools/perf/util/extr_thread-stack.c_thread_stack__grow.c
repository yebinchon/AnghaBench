
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_stack_entry {int dummy; } ;
struct thread_stack {size_t sz; struct thread_stack_entry* stack; } ;


 int ENOMEM ;
 size_t STACK_GROWTH ;
 struct thread_stack_entry* realloc (struct thread_stack_entry*,size_t) ;

__attribute__((used)) static int thread_stack__grow(struct thread_stack *ts)
{
 struct thread_stack_entry *new_stack;
 size_t sz, new_sz;

 new_sz = ts->sz + STACK_GROWTH;
 sz = new_sz * sizeof(struct thread_stack_entry);

 new_stack = realloc(ts->stack, sz);
 if (!new_stack)
  return -ENOMEM;

 ts->stack = new_stack;
 ts->sz = new_sz;

 return 0;
}

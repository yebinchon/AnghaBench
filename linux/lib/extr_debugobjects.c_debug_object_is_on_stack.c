
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int current ;
 int object_is_on_stack (void*) ;
 int pr_warn (char*,void*,int ) ;
 int task_stack_page (int ) ;

__attribute__((used)) static void debug_object_is_on_stack(void *addr, int onstack)
{
 int is_on_stack;
 static int limit;

 if (limit > 4)
  return;

 is_on_stack = object_is_on_stack(addr);
 if (is_on_stack == onstack)
  return;

 limit++;
 if (is_on_stack)
  pr_warn("object %p is on stack %p, but NOT annotated.\n", addr,
    task_stack_page(current));
 else
  pr_warn("object %p is NOT on stack %p, but annotated.\n", addr,
    task_stack_page(current));

 WARN_ON(1);
}

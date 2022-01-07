
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ THREAD_SIZE ;
 int __kasan_unpoison_stack (struct task_struct*,scalar_t__) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

void kasan_unpoison_task_stack(struct task_struct *task)
{
 __kasan_unpoison_stack(task, task_stack_page(task) + THREAD_SIZE);
}

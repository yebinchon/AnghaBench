
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int kasan_unpoison_shadow (void*,size_t) ;
 void* task_stack_page (struct task_struct*) ;

__attribute__((used)) static void __kasan_unpoison_stack(struct task_struct *task, const void *sp)
{
 void *base = task_stack_page(task);
 size_t size = sp - base;

 kasan_unpoison_shadow(base, size);
}

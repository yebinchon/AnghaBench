
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * mm; } ;
struct mm_struct {int dummy; } ;


 struct task_struct* current ;
 int enter_lazy_tlb (struct mm_struct*,struct task_struct*) ;
 int sync_mm_rss (struct mm_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

void unuse_mm(struct mm_struct *mm)
{
 struct task_struct *tsk = current;

 task_lock(tsk);
 sync_mm_rss(mm);
 tsk->mm = ((void*)0);

 enter_lazy_tlb(mm, tsk);
 task_unlock(tsk);
}

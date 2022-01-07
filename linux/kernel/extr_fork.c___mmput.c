
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {TYPE_1__* binfmt; int mmlist; int mm_users; } ;
struct TYPE_2__ {int module; } ;


 int VM_BUG_ON (int ) ;
 int atomic_read (int *) ;
 int exit_aio (struct mm_struct*) ;
 int exit_mmap (struct mm_struct*) ;
 int khugepaged_exit (struct mm_struct*) ;
 int ksm_exit (struct mm_struct*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mm_put_huge_zero_page (struct mm_struct*) ;
 int mmdrop (struct mm_struct*) ;
 int mmlist_lock ;
 int module_put (int ) ;
 int set_mm_exe_file (struct mm_struct*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uprobe_clear_state (struct mm_struct*) ;

__attribute__((used)) static inline void __mmput(struct mm_struct *mm)
{
 VM_BUG_ON(atomic_read(&mm->mm_users));

 uprobe_clear_state(mm);
 exit_aio(mm);
 ksm_exit(mm);
 khugepaged_exit(mm);
 exit_mmap(mm);
 mm_put_huge_zero_page(mm);
 set_mm_exe_file(mm, ((void*)0));
 if (!list_empty(&mm->mmlist)) {
  spin_lock(&mmlist_lock);
  list_del(&mm->mmlist);
  spin_unlock(&mmlist_lock);
 }
 if (mm->binfmt)
  module_put(mm->binfmt->module);
 mmdrop(mm);
}

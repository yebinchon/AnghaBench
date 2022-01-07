
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_notifier {int dummy; } ;
struct mm_struct {int mmap_sem; } ;


 int __mmu_notifier_register (struct mmu_notifier*,struct mm_struct*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int mmu_notifier_register(struct mmu_notifier *mn, struct mm_struct *mm)
{
 int ret;

 down_write(&mm->mmap_sem);
 ret = __mmu_notifier_register(mn, mm);
 up_write(&mm->mmap_sem);
 return ret;
}

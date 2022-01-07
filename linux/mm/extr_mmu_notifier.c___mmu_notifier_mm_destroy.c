
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {TYPE_1__* mmu_notifier_mm; } ;
struct TYPE_3__ {int list; } ;


 int BUG_ON (int) ;
 TYPE_1__* LIST_POISON1 ;
 int hlist_empty (int *) ;
 int kfree (TYPE_1__*) ;

void __mmu_notifier_mm_destroy(struct mm_struct *mm)
{
 BUG_ON(!hlist_empty(&mm->mmu_notifier_mm->list));
 kfree(mm->mmu_notifier_mm);
 mm->mmu_notifier_mm = LIST_POISON1;
}

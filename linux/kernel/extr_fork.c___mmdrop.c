
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int user_ns; } ;
struct TYPE_2__ {struct mm_struct* active_mm; struct mm_struct* mm; } ;


 int BUG_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int check_mm (struct mm_struct*) ;
 TYPE_1__* current ;
 int destroy_context (struct mm_struct*) ;
 int free_mm (struct mm_struct*) ;
 struct mm_struct init_mm ;
 int mm_free_pgd (struct mm_struct*) ;
 int mmu_notifier_mm_destroy (struct mm_struct*) ;
 int put_user_ns (int ) ;

void __mmdrop(struct mm_struct *mm)
{
 BUG_ON(mm == &init_mm);
 WARN_ON_ONCE(mm == current->mm);
 WARN_ON_ONCE(mm == current->active_mm);
 mm_free_pgd(mm);
 destroy_context(mm);
 mmu_notifier_mm_destroy(mm);
 check_mm(mm);
 put_user_ns(mm->user_ns);
 free_mm(mm);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int spinlock_t ;


 scalar_t__ vma_is_anonymous (struct vm_area_struct*) ;

__attribute__((used)) static inline int pmd_move_must_withdraw(spinlock_t *new_pmd_ptl,
      spinlock_t *old_pmd_ptl,
      struct vm_area_struct *vma)
{






 return (new_pmd_ptl != old_pmd_ptl) && vma_is_anonymous(vma);
}

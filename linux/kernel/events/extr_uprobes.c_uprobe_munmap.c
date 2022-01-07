
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_mm; } ;
struct TYPE_2__ {int flags; int mm_users; } ;


 int MMF_HAS_UPROBES ;
 int MMF_RECALC_UPROBES ;
 int atomic_read (int *) ;
 scalar_t__ no_uprobe_events () ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int valid_vma (struct vm_area_struct*,int) ;
 scalar_t__ vma_has_uprobes (struct vm_area_struct*,unsigned long,unsigned long) ;

void uprobe_munmap(struct vm_area_struct *vma, unsigned long start, unsigned long end)
{
 if (no_uprobe_events() || !valid_vma(vma, 0))
  return;

 if (!atomic_read(&vma->vm_mm->mm_users))
  return;

 if (!test_bit(MMF_HAS_UPROBES, &vma->vm_mm->flags) ||
      test_bit(MMF_RECALC_UPROBES, &vma->vm_mm->flags))
  return;

 if (vma_has_uprobes(vma, start, end))
  set_bit(MMF_RECALC_UPROBES, &vma->vm_mm->flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int flags; } ;


 int MMF_HAS_UPROBES ;
 int MMF_RECALC_UPROBES ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void uprobe_dup_mmap(struct mm_struct *oldmm, struct mm_struct *newmm)
{
 if (test_bit(MMF_HAS_UPROBES, &oldmm->flags)) {
  set_bit(MMF_HAS_UPROBES, &newmm->flags);

  set_bit(MMF_RECALC_UPROBES, &newmm->flags);
 }
}

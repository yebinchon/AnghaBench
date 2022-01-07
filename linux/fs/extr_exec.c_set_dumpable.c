
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int flags; } ;


 int MMF_DUMPABLE_MASK ;
 unsigned int SUID_DUMP_ROOT ;
 scalar_t__ WARN_ON (int) ;
 int set_mask_bits (int *,int ,int) ;

void set_dumpable(struct mm_struct *mm, int value)
{
 if (WARN_ON((unsigned)value > SUID_DUMP_ROOT))
  return;

 set_mask_bits(&mm->flags, MMF_DUMPABLE_MASK, value);
}

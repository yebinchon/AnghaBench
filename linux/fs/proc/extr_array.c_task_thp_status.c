
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct mm_struct {int flags; } ;


 int CONFIG_TRANSPARENT_HUGEPAGE ;
 int IS_ENABLED (int ) ;
 int MMF_DISABLE_THP ;
 int seq_printf (struct seq_file*,char*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline void task_thp_status(struct seq_file *m, struct mm_struct *mm)
{
 bool thp_enabled = IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE);

 if (thp_enabled)
  thp_enabled = !test_bit(MMF_DISABLE_THP, &mm->flags);
 seq_printf(m, "THP_enabled:\t%d\n", thp_enabled);
}

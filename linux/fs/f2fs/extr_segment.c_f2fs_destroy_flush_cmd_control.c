
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct flush_cmd_control {struct task_struct* f2fs_issue_flush; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {struct flush_cmd_control* fcc_info; } ;


 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int kthread_stop (struct task_struct*) ;
 int kvfree (struct flush_cmd_control*) ;

void f2fs_destroy_flush_cmd_control(struct f2fs_sb_info *sbi, bool free)
{
 struct flush_cmd_control *fcc = SM_I(sbi)->fcc_info;

 if (fcc && fcc->f2fs_issue_flush) {
  struct task_struct *flush_thread = fcc->f2fs_issue_flush;

  fcc->f2fs_issue_flush = ((void*)0);
  kthread_stop(flush_thread);
 }
 if (free) {
  kvfree(fcc);
  SM_I(sbi)->fcc_info = ((void*)0);
 }
}

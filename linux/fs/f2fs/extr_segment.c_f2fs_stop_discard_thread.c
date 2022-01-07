
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {struct task_struct* f2fs_issue_discard; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int kthread_stop (struct task_struct*) ;

void f2fs_stop_discard_thread(struct f2fs_sb_info *sbi)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;

 if (dcc && dcc->f2fs_issue_discard) {
  struct task_struct *discard_thread = dcc->f2fs_issue_discard;

  dcc->f2fs_issue_discard = ((void*)0);
  kthread_stop(discard_thread);
 }
}

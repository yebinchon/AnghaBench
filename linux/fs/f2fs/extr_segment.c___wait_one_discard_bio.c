
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {int cmd_lock; } ;
struct discard_cmd {scalar_t__ state; unsigned int len; int error; int ref; int wait; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 scalar_t__ D_DONE ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int __remove_discard_cmd (struct f2fs_sb_info*,struct discard_cmd*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_io (int *) ;

__attribute__((used)) static unsigned int __wait_one_discard_bio(struct f2fs_sb_info *sbi,
       struct discard_cmd *dc)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
 unsigned int len = 0;

 wait_for_completion_io(&dc->wait);
 mutex_lock(&dcc->cmd_lock);
 f2fs_bug_on(sbi, dc->state != D_DONE);
 dc->ref--;
 if (!dc->ref) {
  if (!dc->error)
   len = dc->len;
  __remove_discard_cmd(sbi, dc);
 }
 mutex_unlock(&dcc->cmd_lock);

 return len;
}

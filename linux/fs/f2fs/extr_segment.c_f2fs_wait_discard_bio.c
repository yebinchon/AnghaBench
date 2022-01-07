
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {int cmd_lock; int root; } ;
struct discard_cmd {scalar_t__ state; int ref; } ;
typedef int block_t ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 scalar_t__ D_PREP ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int __punch_discard_cmd (struct f2fs_sb_info*,struct discard_cmd*,int ) ;
 int __wait_one_discard_bio (struct f2fs_sb_info*,struct discard_cmd*) ;
 scalar_t__ f2fs_lookup_rb_tree (int *,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void f2fs_wait_discard_bio(struct f2fs_sb_info *sbi, block_t blkaddr)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
 struct discard_cmd *dc;
 bool need_wait = 0;

 mutex_lock(&dcc->cmd_lock);
 dc = (struct discard_cmd *)f2fs_lookup_rb_tree(&dcc->root,
       ((void*)0), blkaddr);
 if (dc) {
  if (dc->state == D_PREP) {
   __punch_discard_cmd(sbi, dc, blkaddr);
  } else {
   dc->ref++;
   need_wait = 1;
  }
 }
 mutex_unlock(&dcc->cmd_lock);

 if (need_wait)
  __wait_one_discard_bio(sbi, dc);
}

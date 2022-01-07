
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {int dummy; } ;
struct discard_cmd {int error; int len; int start; int lstart; int ref; int lock; scalar_t__ bio_ref; int bdev; } ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;


 int EOPNOTSUPP ;
 int KERN_INFO ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int __detach_discard_cmd (struct discard_cmd_control*,struct discard_cmd*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int ) ;
 int printk_ratelimited (char*,int ,int ,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_f2fs_remove_discard (int ,int ,int ) ;

__attribute__((used)) static void __remove_discard_cmd(struct f2fs_sb_info *sbi,
       struct discard_cmd *dc)
{
 struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
 unsigned long flags;

 trace_f2fs_remove_discard(dc->bdev, dc->start, dc->len);

 spin_lock_irqsave(&dc->lock, flags);
 if (dc->bio_ref) {
  spin_unlock_irqrestore(&dc->lock, flags);
  return;
 }
 spin_unlock_irqrestore(&dc->lock, flags);

 f2fs_bug_on(sbi, dc->ref);

 if (dc->error == -EOPNOTSUPP)
  dc->error = 0;

 if (dc->error)
  printk_ratelimited(
   "%sF2FS-fs: Issue discard(%u, %u, %u) failed, ret: %d",
   KERN_INFO, dc->lstart, dc->start, dc->len, dc->error);
 __detach_discard_cmd(dcc, dc);
}

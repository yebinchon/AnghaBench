
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int fsync_node_lock; scalar_t__ fsync_seg_id; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void f2fs_reset_fsync_node_info(struct f2fs_sb_info *sbi)
{
 unsigned long flags;

 spin_lock_irqsave(&sbi->fsync_node_lock, flags);
 sbi->fsync_seg_id = 0;
 spin_unlock_irqrestore(&sbi->fsync_node_lock, flags);
}

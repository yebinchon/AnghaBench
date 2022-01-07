
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int cp_lock; } ;


 int F2FS_CKPT (struct f2fs_sb_info*) ;
 int __clear_ckpt_flags (int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void clear_ckpt_flags(struct f2fs_sb_info *sbi, unsigned int f)
{
 unsigned long flags;

 spin_lock_irqsave(&sbi->cp_lock, flags);
 __clear_ckpt_flags(F2FS_CKPT(sbi), f);
 spin_unlock_irqrestore(&sbi->cp_lock, flags);
}

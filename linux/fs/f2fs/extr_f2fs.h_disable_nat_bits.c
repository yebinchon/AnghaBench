
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int cp_lock; } ;
struct TYPE_2__ {unsigned char* nat_bits; } ;


 int CP_NAT_BITS_FLAG ;
 int F2FS_CKPT (struct f2fs_sb_info*) ;
 TYPE_1__* NM_I (struct f2fs_sb_info*) ;
 int __clear_ckpt_flags (int ,int ) ;
 int kvfree (unsigned char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void disable_nat_bits(struct f2fs_sb_info *sbi, bool lock)
{
 unsigned long flags;
 unsigned char *nat_bits;







 if (lock)
  spin_lock_irqsave(&sbi->cp_lock, flags);
 __clear_ckpt_flags(F2FS_CKPT(sbi), CP_NAT_BITS_FLAG);
 nat_bits = NM_I(sbi)->nat_bits;
 NM_I(sbi)->nat_bits = ((void*)0);
 if (lock)
  spin_unlock_irqrestore(&sbi->cp_lock, flags);

 kvfree(nat_bits);
}

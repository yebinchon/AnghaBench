
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fsi_master {int lock; scalar_t__ base; } ;


 int __fsi_reg_mask_set (scalar_t__,scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void _fsi_master_mask_set(struct fsi_master *master,
          u32 reg, u32 mask, u32 data)
{
 unsigned long flags;

 spin_lock_irqsave(&master->lock, flags);
 __fsi_reg_mask_set(master->base + reg, mask, data);
 spin_unlock_irqrestore(&master->lock, flags);
}

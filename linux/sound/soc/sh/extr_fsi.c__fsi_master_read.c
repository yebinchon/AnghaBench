
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fsi_master {int lock; scalar_t__ base; } ;


 scalar_t__ __fsi_reg_read (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 _fsi_master_read(struct fsi_master *master, u32 reg)
{
 u32 ret;
 unsigned long flags;

 spin_lock_irqsave(&master->lock, flags);
 ret = __fsi_reg_read(master->base + reg);
 spin_unlock_irqrestore(&master->lock, flags);

 return ret;
}

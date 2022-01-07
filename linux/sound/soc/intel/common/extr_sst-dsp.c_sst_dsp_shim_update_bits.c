
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int spinlock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;

int sst_dsp_shim_update_bits(struct sst_dsp *sst, u32 offset,
    u32 mask, u32 value)
{
 unsigned long flags;
 bool change;

 spin_lock_irqsave(&sst->spinlock, flags);
 change = sst_dsp_shim_update_bits_unlocked(sst, offset, mask, value);
 spin_unlock_irqrestore(&sst->spinlock, flags);
 return change;
}

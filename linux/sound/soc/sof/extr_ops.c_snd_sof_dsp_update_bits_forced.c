
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int hw_lock; } ;


 int snd_sof_dsp_update_bits_forced_unlocked (struct snd_sof_dev*,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_sof_dsp_update_bits_forced(struct snd_sof_dev *sdev, u32 bar,
        u32 offset, u32 mask, u32 value)
{
 unsigned long flags;

 spin_lock_irqsave(&sdev->hw_lock, flags);
 snd_sof_dsp_update_bits_forced_unlocked(sdev, bar, offset, mask, value);
 spin_unlock_irqrestore(&sdev->hw_lock, flags);
}

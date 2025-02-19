
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct snd_sof_dev {int hw_lock; } ;


 int snd_sof_dsp_update_bits64_unlocked (struct snd_sof_dev*,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool snd_sof_dsp_update_bits64(struct snd_sof_dev *sdev, u32 bar, u32 offset,
          u64 mask, u64 value)
{
 unsigned long flags;
 bool change;

 spin_lock_irqsave(&sdev->hw_lock, flags);
 change = snd_sof_dsp_update_bits64_unlocked(sdev, bar, offset, mask,
          value);
 spin_unlock_irqrestore(&sdev->hw_lock, flags);
 return change;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct snd_sof_dev {int dummy; } ;


 int snd_sof_dsp_read64 (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_dsp_write64 (struct snd_sof_dev*,int ,int ,int) ;

bool snd_sof_dsp_update_bits64_unlocked(struct snd_sof_dev *sdev, u32 bar,
     u32 offset, u64 mask, u64 value)
{
 u64 old, new;

 old = snd_sof_dsp_read64(sdev, bar, offset);

 new = (old & ~mask) | (value & mask);

 if (old == new)
  return 0;

 snd_sof_dsp_write64(sdev, bar, offset, new);

 return 1;
}

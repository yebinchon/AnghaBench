
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct snd_sof_dev {int dummy; } ;


 unsigned int snd_sof_dsp_read (struct snd_sof_dev*,unsigned int,unsigned int) ;
 int snd_sof_dsp_write (struct snd_sof_dev*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static
void snd_sof_dsp_update_bits_forced_unlocked(struct snd_sof_dev *sdev, u32 bar,
          u32 offset, u32 mask, u32 value)
{
 unsigned int old, new;
 u32 ret;

 ret = snd_sof_dsp_read(sdev, bar, offset);

 old = ret;
 new = (old & ~mask) | (value & mask);

 snd_sof_dsp_write(sdev, bar, offset, new);
}

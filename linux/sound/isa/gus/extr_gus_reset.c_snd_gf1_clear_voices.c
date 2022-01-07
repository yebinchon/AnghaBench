
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int default_voice_address; scalar_t__ enh_mode; scalar_t__ memory; TYPE_1__* syn_voices; } ;
struct snd_gus_card {int reg_lock; TYPE_2__ gf1; } ;
struct TYPE_3__ {int flags; } ;


 int SNDRV_GF1_VA_CURRENT ;
 int SNDRV_GF1_VA_END ;
 int SNDRV_GF1_VA_START ;
 int SNDRV_GF1_VB_ACCUMULATOR ;
 int SNDRV_GF1_VB_ADDRESS_CONTROL ;
 int SNDRV_GF1_VB_MODE ;
 int SNDRV_GF1_VB_PAN ;
 int SNDRV_GF1_VB_VOLUME_CONTROL ;
 int SNDRV_GF1_VB_VOLUME_END ;
 int SNDRV_GF1_VB_VOLUME_RATE ;
 int SNDRV_GF1_VB_VOLUME_START ;
 int SNDRV_GF1_VW_EFFECT_VOLUME ;
 int SNDRV_GF1_VW_EFFECT_VOLUME_FINAL ;
 int SNDRV_GF1_VW_FREQUENCY ;
 int SNDRV_GF1_VW_VOLUME ;
 int ULTRA_LFO_TREMOLO ;
 int ULTRA_LFO_VIBRATO ;
 int VFLG_DYNAMIC ;
 int snd_gf1_ctrl_stop (struct snd_gus_card*,int ) ;
 int snd_gf1_lfo_shutdown (struct snd_gus_card*,unsigned short,int ) ;
 int snd_gf1_read8 (struct snd_gus_card*,int ) ;
 int snd_gf1_select_voice (struct snd_gus_card*,unsigned short) ;
 int snd_gf1_write16 (struct snd_gus_card*,int ,int) ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,int) ;
 int snd_gf1_write_addr (struct snd_gus_card*,int ,unsigned int,unsigned short) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_gf1_clear_voices(struct snd_gus_card * gus, unsigned short v_min,
     unsigned short v_max)
{
 unsigned long flags;
 unsigned int daddr;
 unsigned short i, w_16;

 daddr = gus->gf1.default_voice_address << 4;
 for (i = v_min; i <= v_max; i++) {




  spin_lock_irqsave(&gus->reg_lock, flags);
  snd_gf1_select_voice(gus, i);
  snd_gf1_ctrl_stop(gus, SNDRV_GF1_VB_ADDRESS_CONTROL);
  snd_gf1_ctrl_stop(gus, SNDRV_GF1_VB_VOLUME_CONTROL);
  if (gus->gf1.enh_mode)
   snd_gf1_write8(gus, SNDRV_GF1_VB_MODE, gus->gf1.memory ? 0x02 : 0x82);
  w_16 = snd_gf1_read8(gus, SNDRV_GF1_VB_ADDRESS_CONTROL) & 0x04;
  snd_gf1_write16(gus, SNDRV_GF1_VW_FREQUENCY, 0x400);
  snd_gf1_write_addr(gus, SNDRV_GF1_VA_START, daddr, w_16);
  snd_gf1_write_addr(gus, SNDRV_GF1_VA_END, daddr, w_16);
  snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_START, 0);
  snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_END, 0);
  snd_gf1_write8(gus, SNDRV_GF1_VB_VOLUME_RATE, 0);
  snd_gf1_write16(gus, SNDRV_GF1_VW_VOLUME, 0);
  snd_gf1_write_addr(gus, SNDRV_GF1_VA_CURRENT, daddr, w_16);
  snd_gf1_write8(gus, SNDRV_GF1_VB_PAN, 7);
  if (gus->gf1.enh_mode) {
   snd_gf1_write8(gus, SNDRV_GF1_VB_ACCUMULATOR, 0);
   snd_gf1_write16(gus, SNDRV_GF1_VW_EFFECT_VOLUME, 0);
   snd_gf1_write16(gus, SNDRV_GF1_VW_EFFECT_VOLUME_FINAL, 0);
  }
  spin_unlock_irqrestore(&gus->reg_lock, flags);




 }
}

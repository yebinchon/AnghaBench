
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;
struct snd_es1688 {int reg_lock; int mixer_lock; } ;


 int EIO ;
 int ES1688P (struct snd_es1688*,int ) ;
 int INIT1 ;
 int SNDRV_GF1_GB_RESET ;
 int outb (int,int) ;
 int snd_es1688_mixer_write (struct snd_es1688*,int,int) ;
 unsigned char snd_gf1_i_look8 (struct snd_gus_card*,int ) ;
 int snd_gf1_i_write8 (struct snd_gus_card*,int ,int) ;
 int snd_printdd (char*,int,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int snd_gusextreme_detect(struct snd_gus_card *gus,
     struct snd_es1688 *es1688)
{
 unsigned long flags;
 unsigned char d;
 spin_lock_irqsave(&es1688->mixer_lock, flags);
 snd_es1688_mixer_write(es1688, 0x40, 0x0b);
 spin_unlock_irqrestore(&es1688->mixer_lock, flags);

 spin_lock_irqsave(&es1688->reg_lock, flags);
 outb(gus->gf1.port & 0x040 ? 2 : 0, ES1688P(es1688, INIT1));
 outb(0, 0x201);
 outb(gus->gf1.port & 0x020 ? 2 : 0, ES1688P(es1688, INIT1));
 outb(0, 0x201);
 outb(gus->gf1.port & 0x010 ? 3 : 1, ES1688P(es1688, INIT1));
 spin_unlock_irqrestore(&es1688->reg_lock, flags);

 udelay(100);

 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RESET, 0);
 if (((d = snd_gf1_i_look8(gus, SNDRV_GF1_GB_RESET)) & 0x07) != 0) {
  snd_printdd("[0x%lx] check 1 failed - 0x%x\n", gus->gf1.port, d);
  return -EIO;
 }
 udelay(160);
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RESET, 1);
 udelay(160);
 if (((d = snd_gf1_i_look8(gus, SNDRV_GF1_GB_RESET)) & 0x07) != 1) {
  snd_printdd("[0x%lx] check 2 failed - 0x%x\n", gus->gf1.port, d);
  return -EIO;
 }

 return 0;
}

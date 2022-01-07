
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_interwave {int dummy; } ;
struct snd_i2c_bus {int dummy; } ;
struct TYPE_4__ {int port; } ;
struct snd_gus_card {int interwave; unsigned char revision; TYPE_2__ gf1; TYPE_1__* card; int reg_lock; } ;
struct TYPE_3__ {int shortname; } ;


 int ENODEV ;
 int SNDRV_GF1_GB_RESET ;
 int SNDRV_GF1_GB_VERSION_NUMBER ;
 int snd_gf1_i_look8 (struct snd_gus_card*,int ) ;
 int snd_gf1_i_write8 (struct snd_gus_card*,int ,int) ;
 unsigned char snd_gf1_look8 (struct snd_gus_card*,int ) ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,unsigned char) ;
 int snd_interwave_detect_stb (struct snd_interwave*,struct snd_gus_card*,int,struct snd_i2c_bus**) ;
 int snd_printdd (char*,int ,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcpy (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int snd_interwave_detect(struct snd_interwave *iwcard,
    struct snd_gus_card *gus,
    int dev



              )
{
 unsigned long flags;
 unsigned char rev1, rev2;
 int d;

 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RESET, 0);
 if (((d = snd_gf1_i_look8(gus, SNDRV_GF1_GB_RESET)) & 0x07) != 0) {
  snd_printdd("[0x%lx] check 1 failed - 0x%x\n", gus->gf1.port, d);
  return -ENODEV;
 }
 udelay(160);
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RESET, 1);
 udelay(160);
 if (((d = snd_gf1_i_look8(gus, SNDRV_GF1_GB_RESET)) & 0x07) != 1) {
  snd_printdd("[0x%lx] check 2 failed - 0x%x\n", gus->gf1.port, d);
  return -ENODEV;
 }
 spin_lock_irqsave(&gus->reg_lock, flags);
 rev1 = snd_gf1_look8(gus, SNDRV_GF1_GB_VERSION_NUMBER);
 snd_gf1_write8(gus, SNDRV_GF1_GB_VERSION_NUMBER, ~rev1);
 rev2 = snd_gf1_look8(gus, SNDRV_GF1_GB_VERSION_NUMBER);
 snd_gf1_write8(gus, SNDRV_GF1_GB_VERSION_NUMBER, rev1);
 spin_unlock_irqrestore(&gus->reg_lock, flags);
 snd_printdd("[0x%lx] InterWave check - rev1=0x%x, rev2=0x%x\n", gus->gf1.port, rev1, rev2);
 if ((rev1 & 0xf0) == (rev2 & 0xf0) &&
     (rev1 & 0x0f) != (rev2 & 0x0f)) {
  snd_printdd("[0x%lx] InterWave check - passed\n", gus->gf1.port);
  gus->interwave = 1;
  strcpy(gus->card->shortname, "AMD InterWave");
  gus->revision = rev1 >> 4;

  return 0;



 }
 snd_printdd("[0x%lx] InterWave check - failed\n", gus->gf1.port);
 return -ENODEV;
}

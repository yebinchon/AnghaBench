
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int ENODEV ;
 int SNDRV_GF1_GB_RESET ;
 unsigned char snd_gf1_i_look8 (struct snd_gus_card*,int ) ;
 int snd_gf1_i_write8 (struct snd_gus_card*,int ,int) ;
 int snd_printdd (char*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static int snd_gusclassic_detect(struct snd_gus_card *gus)
{
 unsigned char d;

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
 return 0;
}

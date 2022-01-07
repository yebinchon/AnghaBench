
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 int SNDRV_GF1_GB_RESET ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void snd_interwave_reset(struct snd_gus_card *gus)
{
 snd_gf1_write8(gus, SNDRV_GF1_GB_RESET, 0x00);
 udelay(160);
 snd_gf1_write8(gus, SNDRV_GF1_GB_RESET, 0x01);
 udelay(160);
}

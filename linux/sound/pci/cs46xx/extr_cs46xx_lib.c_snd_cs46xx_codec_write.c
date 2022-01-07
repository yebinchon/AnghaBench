
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {int (* active_ctrl ) (struct snd_cs46xx*,int) ;TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 unsigned short ACCTL_DCV ;
 unsigned short ACCTL_ESYN ;
 unsigned short ACCTL_RSTN ;
 unsigned short ACCTL_TC ;
 unsigned short ACCTL_VFRM ;
 int BA0_ACCAD ;
 int BA0_ACCDA ;
 int BA0_ACCTL ;
 int CS46XX_PRIMARY_CODEC_INDEX ;
 int CS46XX_SECONDARY_CODEC_INDEX ;
 int dev_err (int ,char*,int,unsigned short,unsigned short) ;
 scalar_t__ snd_BUG_ON (int) ;
 unsigned short snd_cs46xx_peekBA0 (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,unsigned short) ;
 int stub1 (struct snd_cs46xx*,int) ;
 int stub2 (struct snd_cs46xx*,int) ;
 int udelay (int) ;

__attribute__((used)) static void snd_cs46xx_codec_write(struct snd_cs46xx *chip,
       unsigned short reg,
       unsigned short val,
       int codec_index)
{
 int count;

 if (snd_BUG_ON(codec_index != CS46XX_PRIMARY_CODEC_INDEX &&
         codec_index != CS46XX_SECONDARY_CODEC_INDEX))
  return;

 chip->active_ctrl(chip, 1);
 snd_cs46xx_pokeBA0(chip, BA0_ACCAD , reg);
 snd_cs46xx_pokeBA0(chip, BA0_ACCDA , val);
 snd_cs46xx_peekBA0(chip, BA0_ACCTL);

 if (codec_index == CS46XX_PRIMARY_CODEC_INDEX) {
  snd_cs46xx_pokeBA0(chip, BA0_ACCTL, ACCTL_VFRM |
       ACCTL_ESYN | ACCTL_RSTN);
  snd_cs46xx_pokeBA0(chip, BA0_ACCTL, ACCTL_DCV | ACCTL_VFRM |
       ACCTL_ESYN | ACCTL_RSTN);
 } else {
  snd_cs46xx_pokeBA0(chip, BA0_ACCTL, ACCTL_DCV | ACCTL_TC |
       ACCTL_VFRM | ACCTL_ESYN | ACCTL_RSTN);
 }

 for (count = 0; count < 4000; count++) {



  udelay(10);




  if (!(snd_cs46xx_peekBA0(chip, BA0_ACCTL) & ACCTL_DCV)) {
   goto end;
  }
 }
 dev_err(chip->card->dev,
  "AC'97 write problem, codec_index = %d, reg = 0x%x, val = 0x%x\n",
  codec_index, reg, val);
 end:
 chip->active_ctrl(chip, -1);
}

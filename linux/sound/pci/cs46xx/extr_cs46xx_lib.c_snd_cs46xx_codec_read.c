
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_cs46xx {int (* active_ctrl ) (struct snd_cs46xx*,int) ;TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 unsigned short ACCTL_CRW ;
 unsigned short ACCTL_DCV ;
 unsigned short ACCTL_ESYN ;
 unsigned short ACCTL_RSTN ;
 unsigned short ACCTL_TC ;
 unsigned short ACCTL_VFRM ;
 int ACSTS_VSTS ;
 scalar_t__ BA0_ACCAD ;
 scalar_t__ BA0_ACCDA ;
 scalar_t__ BA0_ACCTL ;
 scalar_t__ BA0_ACSDA ;
 scalar_t__ BA0_ACSTS ;
 int CS46XX_PRIMARY_CODEC_INDEX ;
 int CS46XX_SECONDARY_CODEC_INDEX ;
 scalar_t__ CS46XX_SECONDARY_CODEC_OFFSET ;
 int dev_dbg (int ,char*,unsigned short,int,int) ;
 int dev_err (int ,char*,int,...) ;
 int dev_warn (int ,char*,unsigned short) ;
 int msleep (int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_cs46xx_peekBA0 (struct snd_cs46xx*,scalar_t__) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,scalar_t__,unsigned short) ;
 int stub1 (struct snd_cs46xx*,int) ;
 int stub2 (struct snd_cs46xx*,int) ;
 int udelay (int) ;

__attribute__((used)) static unsigned short snd_cs46xx_codec_read(struct snd_cs46xx *chip,
         unsigned short reg,
         int codec_index)
{
 int count;
 unsigned short result,tmp;
 u32 offset = 0;

 if (snd_BUG_ON(codec_index != CS46XX_PRIMARY_CODEC_INDEX &&
         codec_index != CS46XX_SECONDARY_CODEC_INDEX))
  return 0xffff;

 chip->active_ctrl(chip, 1);

 if (codec_index == CS46XX_SECONDARY_CODEC_INDEX)
  offset = CS46XX_SECONDARY_CODEC_OFFSET;
 snd_cs46xx_peekBA0(chip, BA0_ACSDA + offset);

 tmp = snd_cs46xx_peekBA0(chip, BA0_ACCTL);
 if ((tmp & ACCTL_VFRM) == 0) {
  dev_warn(chip->card->dev, "ACCTL_VFRM not set 0x%x\n", tmp);
  snd_cs46xx_pokeBA0(chip, BA0_ACCTL, (tmp & (~ACCTL_ESYN)) | ACCTL_VFRM );
  msleep(50);
  tmp = snd_cs46xx_peekBA0(chip, BA0_ACCTL + offset);
  snd_cs46xx_pokeBA0(chip, BA0_ACCTL, tmp | ACCTL_ESYN | ACCTL_VFRM );

 }
 snd_cs46xx_pokeBA0(chip, BA0_ACCAD, reg);
 snd_cs46xx_pokeBA0(chip, BA0_ACCDA, 0);
 if (codec_index == CS46XX_PRIMARY_CODEC_INDEX) {
  snd_cs46xx_pokeBA0(chip, BA0_ACCTL, ACCTL_CRW |
       ACCTL_VFRM | ACCTL_ESYN |
       ACCTL_RSTN);
  snd_cs46xx_pokeBA0(chip, BA0_ACCTL, ACCTL_DCV | ACCTL_CRW |
       ACCTL_VFRM | ACCTL_ESYN |
       ACCTL_RSTN);
 } else {
  snd_cs46xx_pokeBA0(chip, BA0_ACCTL, ACCTL_DCV | ACCTL_TC |
       ACCTL_CRW | ACCTL_VFRM | ACCTL_ESYN |
       ACCTL_RSTN);
 }




 for (count = 0; count < 1000; count++) {



  udelay(10);




  if (!(snd_cs46xx_peekBA0(chip, BA0_ACCTL) & ACCTL_DCV))
   goto ok1;
 }

 dev_err(chip->card->dev,
  "AC'97 read problem (ACCTL_DCV), reg = 0x%x\n", reg);
 result = 0xffff;
 goto end;

 ok1:



 for (count = 0; count < 100; count++) {





  if (snd_cs46xx_peekBA0(chip, BA0_ACSTS + offset) & ACSTS_VSTS)
   goto ok2;
  udelay(10);
 }

 dev_err(chip->card->dev,
  "AC'97 read problem (ACSTS_VSTS), codec_index %d, reg = 0x%x\n",
  codec_index, reg);
 result = 0xffff;
 goto end;

 ok2:
 result = snd_cs46xx_peekBA0(chip, BA0_ACSDA + offset);
 end:
 chip->active_ctrl(chip, -1);
 return result;
}

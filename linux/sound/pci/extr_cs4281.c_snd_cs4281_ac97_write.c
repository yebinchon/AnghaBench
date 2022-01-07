
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {scalar_t__ num; struct cs4281* private_data; } ;
struct cs4281 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int BA0_ACCAD ;
 int BA0_ACCDA ;
 int BA0_ACCTL ;
 unsigned short BA0_ACCTL_DCV ;
 unsigned short BA0_ACCTL_ESYN ;
 unsigned short BA0_ACCTL_TC ;
 unsigned short BA0_ACCTL_VFRM ;
 int dev_err (int ,char*,unsigned short,unsigned short) ;
 unsigned short snd_cs4281_peekBA0 (struct cs4281*,int ) ;
 int snd_cs4281_pokeBA0 (struct cs4281*,int ,unsigned short) ;
 int udelay (int) ;

__attribute__((used)) static void snd_cs4281_ac97_write(struct snd_ac97 *ac97,
      unsigned short reg, unsigned short val)
{







 struct cs4281 *chip = ac97->private_data;
 int count;
 snd_cs4281_pokeBA0(chip, BA0_ACCAD, reg);
 snd_cs4281_pokeBA0(chip, BA0_ACCDA, val);
 snd_cs4281_pokeBA0(chip, BA0_ACCTL, BA0_ACCTL_DCV | BA0_ACCTL_VFRM |
                BA0_ACCTL_ESYN | (ac97->num ? BA0_ACCTL_TC : 0));
 for (count = 0; count < 2000; count++) {



  udelay(10);




  if (!(snd_cs4281_peekBA0(chip, BA0_ACCTL) & BA0_ACCTL_DCV)) {
   return;
  }
 }
 dev_err(chip->card->dev,
  "AC'97 write problem, reg = 0x%x, val = 0x%x\n", reg, val);
}

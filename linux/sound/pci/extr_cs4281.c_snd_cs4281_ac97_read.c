
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int num; struct cs4281* private_data; } ;
struct cs4281 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int BA0_ACCAD ;
 int BA0_ACCDA ;
 int BA0_ACCTL ;
 int BA0_ACCTL_CRW ;
 int BA0_ACCTL_DCV ;
 int BA0_ACCTL_ESYN ;
 int BA0_ACCTL_TC ;
 int BA0_ACCTL_VFRM ;
 int BA0_ACSDA ;
 int BA0_ACSDA2 ;
 int BA0_ACSTS ;
 int BA0_ACSTS2 ;
 int BA0_ACSTS_VSTS ;
 int dev_err (int ,char*,unsigned short) ;
 int snd_cs4281_peekBA0 (struct cs4281*,int ) ;
 int snd_cs4281_pokeBA0 (struct cs4281*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static unsigned short snd_cs4281_ac97_read(struct snd_ac97 *ac97,
        unsigned short reg)
{
 struct cs4281 *chip = ac97->private_data;
 int count;
 unsigned short result;


 volatile int ac97_num = ((volatile struct snd_ac97 *)ac97)->num;
 snd_cs4281_peekBA0(chip, ac97_num ? BA0_ACSDA2 : BA0_ACSDA);
 snd_cs4281_pokeBA0(chip, BA0_ACCAD, reg);
 snd_cs4281_pokeBA0(chip, BA0_ACCDA, 0);
 snd_cs4281_pokeBA0(chip, BA0_ACCTL, BA0_ACCTL_DCV | BA0_ACCTL_CRW |
         BA0_ACCTL_VFRM | BA0_ACCTL_ESYN |
      (ac97_num ? BA0_ACCTL_TC : 0));





 for (count = 0; count < 500; count++) {



  udelay(10);




  if (!(snd_cs4281_peekBA0(chip, BA0_ACCTL) & BA0_ACCTL_DCV))
   goto __ok1;
 }

 dev_err(chip->card->dev,
  "AC'97 read problem (ACCTL_DCV), reg = 0x%x\n", reg);
 result = 0xffff;
 goto __end;

      __ok1:



 for (count = 0; count < 100; count++) {





  if (snd_cs4281_peekBA0(chip, ac97_num ? BA0_ACSTS2 : BA0_ACSTS) & BA0_ACSTS_VSTS)
   goto __ok2;
  udelay(10);
 }

 dev_err(chip->card->dev,
  "AC'97 read problem (ACSTS_VSTS), reg = 0x%x\n", reg);
 result = 0xffff;
 goto __end;

      __ok2:




 result = snd_cs4281_peekBA0(chip, ac97_num ? BA0_ACSDA2 : BA0_ACSDA);

      __end:
 return result;
}

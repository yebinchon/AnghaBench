
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int BA0_CLKCR1 ;
 int BA0_SERBAD ;
 int BA0_SERBCM ;
 int BA0_SERBWP ;
 unsigned int CLKCR1_SWCE ;
 unsigned int SERBCM_WRC ;
 scalar_t__ cs46xx_wait_for_fifo (struct snd_cs46xx*,int) ;
 int dev_dbg (int ,char*,int) ;
 unsigned int snd_cs46xx_peekBA0 (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,unsigned int) ;

__attribute__((used)) static void snd_cs46xx_clear_serial_FIFOs(struct snd_cs46xx *chip)
{
 int idx, powerdown = 0;
 unsigned int tmp;





 tmp = snd_cs46xx_peekBA0(chip, BA0_CLKCR1);
 if (!(tmp & CLKCR1_SWCE)) {
  snd_cs46xx_pokeBA0(chip, BA0_CLKCR1, tmp | CLKCR1_SWCE);
  powerdown = 1;
 }






 snd_cs46xx_pokeBA0(chip, BA0_SERBWP, 0);




 for (idx = 0; idx < 0xFF; idx++) {



  if (cs46xx_wait_for_fifo(chip,1)) {
   dev_dbg(chip->card->dev,
    "failed waiting for FIFO at addr (%02X)\n",
    idx);

   if (powerdown)
    snd_cs46xx_pokeBA0(chip, BA0_CLKCR1, tmp);

   break;
  }



  snd_cs46xx_pokeBA0(chip, BA0_SERBAD, idx);



  snd_cs46xx_pokeBA0(chip, BA0_SERBCM, SERBCM_WRC);
 }




 if (powerdown)
  snd_cs46xx_pokeBA0(chip, BA0_CLKCR1, tmp);
}

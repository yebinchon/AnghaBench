
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ACCTL_ESYN ;
 int ACCTL_RSTN ;
 int ACCTL_VFRM ;
 int ACISV_ISV3 ;
 int ACISV_ISV4 ;
 int ACOSV_SLV3 ;
 int ACOSV_SLV4 ;
 int ACSTS_CRDY ;
 int BA0_ACCTL ;
 int BA0_ACCTL2 ;
 int BA0_ACISV ;
 int BA0_ACOSV ;
 int BA0_ACSTS ;
 int BA0_ACSTS2 ;
 int BA0_CLKCR1 ;
 int BA0_CLKCR2 ;
 int BA0_PLLCC ;
 int BA0_PLLM ;
 int BA0_SERACC ;
 int BA0_SERBCF ;
 int BA0_SERC1 ;
 int BA0_SERC2 ;
 int BA0_SERC3 ;
 int BA0_SERC4 ;
 int BA0_SERC5 ;
 int BA0_SERC6 ;
 int BA0_SERC7 ;
 int BA0_SERMC1 ;
 int CLKCR1_PLLP ;
 int CLKCR1_SWCE ;
 int CLKCR2_PDIVS_8 ;
 int EIO ;
 int PLLCC_CDR_73_104_MHZ ;
 int PLLCC_LPF_1050_2780_KHZ ;
 int SERACC_CHIP_TYPE_1_03 ;
 int SERACC_CHIP_TYPE_2_0 ;
 int SERACC_HSP ;
 int SERACC_TWO_CODECS ;
 int SERBCF_HBP ;
 int SERC1_SO1EN ;
 int SERC1_SO1F_AC97 ;
 int SERC2_SI1F_AC97 ;
 int SERC7_ASDI2EN ;
 int SERMC1_MSPE ;
 int SERMC1_PTC_AC97 ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int mdelay (int) ;
 int msleep (int) ;
 int snd_cs46xx_clear_serial_FIFOs (struct snd_cs46xx*) ;
 int snd_cs46xx_peekBA0 (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int snd_cs46xx_chip_init(struct snd_cs46xx *chip)
{
 int timeout;






        snd_cs46xx_pokeBA0(chip, BA0_CLKCR1, 0);
        snd_cs46xx_pokeBA0(chip, BA0_SERMC1, 0);
 snd_cs46xx_pokeBA0(chip, BA0_SERACC, SERACC_HSP | SERACC_CHIP_TYPE_1_03);
 snd_cs46xx_pokeBA0(chip, BA0_ACCTL, 0);



 udelay(50);
 snd_cs46xx_pokeBA0(chip, BA0_ACCTL, ACCTL_RSTN);
 snd_cs46xx_pokeBA0(chip, BA0_ACCTL, ACCTL_ESYN | ACCTL_RSTN);
 mdelay(10);





 snd_cs46xx_pokeBA0(chip, BA0_SERMC1, SERMC1_PTC_AC97);






 snd_cs46xx_pokeBA0(chip, BA0_PLLCC, PLLCC_LPF_1050_2780_KHZ | PLLCC_CDR_73_104_MHZ);
 snd_cs46xx_pokeBA0(chip, BA0_PLLM, 0x3a);
 snd_cs46xx_pokeBA0(chip, BA0_CLKCR2, CLKCR2_PDIVS_8);




 snd_cs46xx_pokeBA0(chip, BA0_CLKCR1, CLKCR1_PLLP);




 msleep(100);




 snd_cs46xx_pokeBA0(chip, BA0_CLKCR1, CLKCR1_PLLP | CLKCR1_SWCE);




 snd_cs46xx_pokeBA0(chip, BA0_SERBCF, SERBCF_HBP);




 snd_cs46xx_clear_serial_FIFOs(chip);
 snd_cs46xx_pokeBA0(chip, BA0_SERC1, SERC1_SO1F_AC97 | SERC1_SO1EN);
 snd_cs46xx_pokeBA0(chip, BA0_SERC2, SERC2_SI1F_AC97 | SERC1_SO1EN);
 snd_cs46xx_pokeBA0(chip, BA0_SERMC1, SERMC1_PTC_AC97 | SERMC1_MSPE);
 mdelay(5);





 timeout = 150;
 while (timeout-- > 0) {




  if (snd_cs46xx_peekBA0(chip, BA0_ACSTS) & ACSTS_CRDY)
   goto ok1;
  msleep(10);
 }


 dev_err(chip->card->dev,
  "create - never read codec ready from AC'97\n");
 dev_err(chip->card->dev,
  "it is not probably bug, try to use CS4236 driver\n");
 return -EIO;
 ok1:
 snd_cs46xx_pokeBA0(chip, BA0_ACCTL, ACCTL_VFRM | ACCTL_ESYN | ACCTL_RSTN);
 timeout = 150;
 while (timeout-- > 0) {




  if ((snd_cs46xx_peekBA0(chip, BA0_ACISV) & (ACISV_ISV3 | ACISV_ISV4)) == (ACISV_ISV3 | ACISV_ISV4))
   goto ok2;
  msleep(10);
 }


 dev_err(chip->card->dev,
  "create - never read ISV3 & ISV4 from AC'97\n");
 return -EIO;
 ok2:






 snd_cs46xx_pokeBA0(chip, BA0_ACOSV, ACOSV_SLV3 | ACOSV_SLV4);
 return 0;
}

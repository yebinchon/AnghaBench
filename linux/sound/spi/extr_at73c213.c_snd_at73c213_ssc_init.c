
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_at73c213 {TYPE_1__* ssc; } ;
struct TYPE_2__ {int regs; } ;


 int SSC_BF (int ,int) ;
 int SSC_BIT (int ) ;
 int TCMR ;
 int TCMR_CKO ;
 int TCMR_PERIOD ;
 int TCMR_START ;
 int TCMR_STTDLY ;
 int TFMR ;
 int TFMR_DATLEN ;
 int TFMR_DATNB ;
 int TFMR_FSLEN ;
 int TFMR_FSOS ;
 int TFMR_MSBF ;
 int ssc_writel (int ,int ,int) ;

__attribute__((used)) static int snd_at73c213_ssc_init(struct snd_at73c213 *chip)
{






 ssc_writel(chip->ssc->regs, TCMR,
   SSC_BF(TCMR_CKO, 1)
   | SSC_BF(TCMR_START, 4)
   | SSC_BF(TCMR_STTDLY, 1)
   | SSC_BF(TCMR_PERIOD, 16 - 1));







 ssc_writel(chip->ssc->regs, TFMR,
   SSC_BF(TFMR_DATLEN, 16 - 1)
   | SSC_BIT(TFMR_MSBF)
   | SSC_BF(TFMR_DATNB, 1)
   | SSC_BF(TFMR_FSLEN, 16 - 1)
   | SSC_BF(TFMR_FSOS, 1));

 return 0;
}

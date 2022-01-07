
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int BA1_FRMT ;
 int BA1_SPCR ;
 int SPCR_DRQEN ;
 int SPCR_RUN ;
 int SPCR_RUNFR ;
 int dev_err (int ,char*) ;
 int snd_cs46xx_peek (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void snd_cs46xx_proc_start(struct snd_cs46xx *chip)
{
 int cnt;




 snd_cs46xx_poke(chip, BA1_FRMT, 0xadf);




 snd_cs46xx_poke(chip, BA1_SPCR, SPCR_RUN | SPCR_RUNFR | SPCR_DRQEN);




 for (cnt = 0; cnt < 25; cnt++) {
  udelay(50);
  if (!(snd_cs46xx_peek(chip, BA1_SPCR) & SPCR_RUNFR))
   break;
 }

 if (snd_cs46xx_peek(chip, BA1_SPCR) & SPCR_RUNFR)
  dev_err(chip->card->dev, "SPCR_RUNFR never reset\n");
}

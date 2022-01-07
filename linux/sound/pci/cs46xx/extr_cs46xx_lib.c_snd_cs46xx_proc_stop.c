
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int dummy; } ;


 int BA1_SPCR ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int ,int ) ;

__attribute__((used)) static void snd_cs46xx_proc_stop(struct snd_cs46xx *chip)
{




 snd_cs46xx_poke(chip, BA1_SPCR, 0);
}

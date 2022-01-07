
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int dummy; } ;


 int BA0_CLKCR1 ;
 int BA1_CCTL ;
 int BA1_CIE ;
 int BA1_PCTL ;
 int BA1_PFIE ;
 unsigned int CLKCR1_SWCE ;
 unsigned int snd_cs46xx_peek (struct snd_cs46xx*,int ) ;
 unsigned int snd_cs46xx_peekBA0 (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int ,unsigned int) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,unsigned int) ;
 int snd_cs46xx_proc_stop (struct snd_cs46xx*) ;
 int snd_cs46xx_reset (struct snd_cs46xx*) ;

__attribute__((used)) static void snd_cs46xx_hw_stop(struct snd_cs46xx *chip)
{
 unsigned int tmp;

 tmp = snd_cs46xx_peek(chip, BA1_PFIE);
 tmp &= ~0x0000f03f;
 tmp |= 0x00000010;
 snd_cs46xx_poke(chip, BA1_PFIE, tmp);

 tmp = snd_cs46xx_peek(chip, BA1_CIE);
 tmp &= ~0x0000003f;
 tmp |= 0x00000011;
 snd_cs46xx_poke(chip, BA1_CIE, tmp);




 tmp = snd_cs46xx_peek(chip, BA1_PCTL);
 snd_cs46xx_poke(chip, BA1_PCTL, tmp & 0x0000ffff);




 tmp = snd_cs46xx_peek(chip, BA1_CCTL);
 snd_cs46xx_poke(chip, BA1_CCTL, tmp & 0xffff0000);




 snd_cs46xx_reset(chip);

 snd_cs46xx_proc_stop(chip);




 snd_cs46xx_pokeBA0(chip, BA0_CLKCR1, 0);





 tmp = snd_cs46xx_peekBA0(chip, BA0_CLKCR1) & ~CLKCR1_SWCE;
 snd_cs46xx_pokeBA0(chip, BA0_CLKCR1, tmp);
}

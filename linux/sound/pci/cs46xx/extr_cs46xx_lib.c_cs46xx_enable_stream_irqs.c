
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int dummy; } ;


 int BA0_HICR ;
 int BA1_CIE ;
 int BA1_PFIE ;
 int HICR_CHGM ;
 int HICR_IEV ;
 unsigned int snd_cs46xx_peek (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int ,unsigned int) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int) ;

__attribute__((used)) static void cs46xx_enable_stream_irqs(struct snd_cs46xx *chip)
{
 unsigned int tmp;

 snd_cs46xx_pokeBA0(chip, BA0_HICR, HICR_IEV | HICR_CHGM);

 tmp = snd_cs46xx_peek(chip, BA1_PFIE);
 tmp &= ~0x0000f03f;
 snd_cs46xx_poke(chip, BA1_PFIE, tmp);

 tmp = snd_cs46xx_peek(chip, BA1_CIE);
 tmp &= ~0x0000003f;
 tmp |= 0x00000001;
 snd_cs46xx_poke(chip, BA1_CIE, tmp);
}

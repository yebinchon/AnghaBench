
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_ad1889 {int dummy; } ;


 int AD_AC97_ACIC ;
 int AD_AC97_ACIC_ACIE ;
 int AD_AC97_ACIC_ACRD ;
 int AD_AC97_ACIC_ASOE ;
 int AD_AC97_ACIC_VSRM ;
 int ad1889_readw (struct snd_ad1889*,int ) ;
 int ad1889_writew (struct snd_ad1889*,int ,int) ;
 int snd_ad1889_ac97_ready (struct snd_ad1889*) ;
 int udelay (int) ;

__attribute__((used)) static void
snd_ad1889_ac97_xinit(struct snd_ad1889 *chip)
{
 u16 reg;

 reg = ad1889_readw(chip, AD_AC97_ACIC);
 reg |= AD_AC97_ACIC_ACRD;
 ad1889_writew(chip, AD_AC97_ACIC, reg);
 ad1889_readw(chip, AD_AC97_ACIC);
 udelay(10);

 reg |= AD_AC97_ACIC_ACIE;
 ad1889_writew(chip, AD_AC97_ACIC, reg);

 snd_ad1889_ac97_ready(chip);


 reg = ad1889_readw(chip, AD_AC97_ACIC);
 reg |= AD_AC97_ACIC_ASOE | AD_AC97_ACIC_VSRM;
 ad1889_writew(chip, AD_AC97_ACIC, reg);
 ad1889_readw(chip, AD_AC97_ACIC);

}

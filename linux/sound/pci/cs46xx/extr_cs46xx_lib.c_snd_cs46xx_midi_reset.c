
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int midcr; } ;


 int BA0_MIDCR ;
 int MIDCR_MRST ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void snd_cs46xx_midi_reset(struct snd_cs46xx *chip)
{
 snd_cs46xx_pokeBA0(chip, BA0_MIDCR, MIDCR_MRST);
 udelay(100);
 snd_cs46xx_pokeBA0(chip, BA0_MIDCR, chip->midcr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4281 {int midcr; } ;


 int BA0_MIDCR ;
 int BA0_MIDCR_MRST ;
 int snd_cs4281_pokeBA0 (struct cs4281*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void snd_cs4281_midi_reset(struct cs4281 *chip)
{
 snd_cs4281_pokeBA0(chip, BA0_MIDCR, chip->midcr | BA0_MIDCR_MRST);
 udelay(100);
 snd_cs4281_pokeBA0(chip, BA0_MIDCR, chip->midcr);
}

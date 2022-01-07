
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_cs46xx {int midcr; int reg_lock; } ;
struct TYPE_2__ {struct snd_cs46xx* private_data; } ;


 int BA0_MIDCR ;
 int BA0_MIDSR ;
 int BA0_MIDWP ;
 int MIDCR_TIE ;
 int MIDSR_TBF ;
 int snd_cs46xx_peekBA0 (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,unsigned char) ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs46xx_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct snd_cs46xx *chip = substream->rmidi->private_data;
 unsigned char byte;

 spin_lock_irqsave(&chip->reg_lock, flags);
 if (up) {
  if ((chip->midcr & MIDCR_TIE) == 0) {
   chip->midcr |= MIDCR_TIE;

   while ((chip->midcr & MIDCR_TIE) &&
          (snd_cs46xx_peekBA0(chip, BA0_MIDSR) & MIDSR_TBF) == 0) {
    if (snd_rawmidi_transmit(substream, &byte, 1) != 1) {
     chip->midcr &= ~MIDCR_TIE;
    } else {
     snd_cs46xx_pokeBA0(chip, BA0_MIDWP, byte);
    }
   }
   snd_cs46xx_pokeBA0(chip, BA0_MIDCR, chip->midcr);
  }
 } else {
  if (chip->midcr & MIDCR_TIE) {
   chip->midcr &= ~MIDCR_TIE;
   snd_cs46xx_pokeBA0(chip, BA0_MIDCR, chip->midcr);
  }
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct cs4281 {int midcr; int reg_lock; } ;
struct TYPE_2__ {struct cs4281* private_data; } ;


 int BA0_MIDCR ;
 int BA0_MIDCR_TIE ;
 int BA0_MIDSR ;
 int BA0_MIDSR_TBF ;
 int BA0_MIDWP ;
 int snd_cs4281_peekBA0 (struct cs4281*,int ) ;
 int snd_cs4281_pokeBA0 (struct cs4281*,int ,unsigned char) ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs4281_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct cs4281 *chip = substream->rmidi->private_data;
 unsigned char byte;

 spin_lock_irqsave(&chip->reg_lock, flags);
 if (up) {
  if ((chip->midcr & BA0_MIDCR_TIE) == 0) {
   chip->midcr |= BA0_MIDCR_TIE;

   while ((chip->midcr & BA0_MIDCR_TIE) &&
          (snd_cs4281_peekBA0(chip, BA0_MIDSR) & BA0_MIDSR_TBF) == 0) {
    if (snd_rawmidi_transmit(substream, &byte, 1) != 1) {
     chip->midcr &= ~BA0_MIDCR_TIE;
    } else {
     snd_cs4281_pokeBA0(chip, BA0_MIDWP, byte);
    }
   }
   snd_cs4281_pokeBA0(chip, BA0_MIDCR, chip->midcr);
  }
 } else {
  if (chip->midcr & BA0_MIDCR_TIE) {
   chip->midcr &= ~BA0_MIDCR_TIE;
   snd_cs4281_pokeBA0(chip, BA0_MIDCR, chip->midcr);
  }
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}

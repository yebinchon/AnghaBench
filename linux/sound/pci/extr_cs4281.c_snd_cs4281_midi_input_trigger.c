
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct cs4281 {int midcr; int reg_lock; } ;
struct TYPE_2__ {struct cs4281* private_data; } ;


 int BA0_MIDCR ;
 int BA0_MIDCR_RIE ;
 int snd_cs4281_pokeBA0 (struct cs4281*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs4281_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct cs4281 *chip = substream->rmidi->private_data;

 spin_lock_irqsave(&chip->reg_lock, flags);
 if (up) {
  if ((chip->midcr & BA0_MIDCR_RIE) == 0) {
   chip->midcr |= BA0_MIDCR_RIE;
   snd_cs4281_pokeBA0(chip, BA0_MIDCR, chip->midcr);
  }
 } else {
  if (chip->midcr & BA0_MIDCR_RIE) {
   chip->midcr &= ~BA0_MIDCR_RIE;
   snd_cs4281_pokeBA0(chip, BA0_MIDCR, chip->midcr);
  }
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}

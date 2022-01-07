
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_cs46xx {int midcr; int reg_lock; } ;
struct TYPE_2__ {struct snd_cs46xx* private_data; } ;


 int BA0_MIDCR ;
 int MIDCR_RIE ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs46xx_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct snd_cs46xx *chip = substream->rmidi->private_data;

 spin_lock_irqsave(&chip->reg_lock, flags);
 if (up) {
  if ((chip->midcr & MIDCR_RIE) == 0) {
   chip->midcr |= MIDCR_RIE;
   snd_cs46xx_pokeBA0(chip, BA0_MIDCR, chip->midcr);
  }
 } else {
  if (chip->midcr & MIDCR_RIE) {
   chip->midcr &= ~MIDCR_RIE;
   snd_cs46xx_pokeBA0(chip, BA0_MIDCR, chip->midcr);
  }
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}

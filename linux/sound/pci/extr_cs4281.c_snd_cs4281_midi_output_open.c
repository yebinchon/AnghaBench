
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct cs4281 {int uartm; int reg_lock; int midcr; struct snd_rawmidi_substream* midi_output; } ;
struct TYPE_2__ {struct cs4281* private_data; } ;


 int BA0_MIDCR ;
 int BA0_MIDCR_TXE ;
 int CS4281_MODE_INPUT ;
 int CS4281_MODE_OUTPUT ;
 int snd_cs4281_midi_reset (struct cs4281*) ;
 int snd_cs4281_pokeBA0 (struct cs4281*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cs4281_midi_output_open(struct snd_rawmidi_substream *substream)
{
 struct cs4281 *chip = substream->rmidi->private_data;

 spin_lock_irq(&chip->reg_lock);
 chip->uartm |= CS4281_MODE_OUTPUT;
 chip->midcr |= BA0_MIDCR_TXE;
 chip->midi_output = substream;
 if (!(chip->uartm & CS4281_MODE_INPUT)) {
  snd_cs4281_midi_reset(chip);
 } else {
  snd_cs4281_pokeBA0(chip, BA0_MIDCR, chip->midcr);
 }
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}

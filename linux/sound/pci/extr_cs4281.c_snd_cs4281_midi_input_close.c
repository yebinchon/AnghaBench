
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct cs4281 {int midcr; int uartm; int reg_lock; int * midi_input; } ;
struct TYPE_2__ {struct cs4281* private_data; } ;


 int BA0_MIDCR ;
 int BA0_MIDCR_RIE ;
 int BA0_MIDCR_RXE ;
 int CS4281_MODE_INPUT ;
 int CS4281_MODE_OUTPUT ;
 int snd_cs4281_midi_reset (struct cs4281*) ;
 int snd_cs4281_pokeBA0 (struct cs4281*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cs4281_midi_input_close(struct snd_rawmidi_substream *substream)
{
 struct cs4281 *chip = substream->rmidi->private_data;

 spin_lock_irq(&chip->reg_lock);
 chip->midcr &= ~(BA0_MIDCR_RXE | BA0_MIDCR_RIE);
 chip->midi_input = ((void*)0);
 if (!(chip->uartm & CS4281_MODE_OUTPUT)) {
  snd_cs4281_midi_reset(chip);
 } else {
  snd_cs4281_pokeBA0(chip, BA0_MIDCR, chip->midcr);
 }
 chip->uartm &= ~CS4281_MODE_INPUT;
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}

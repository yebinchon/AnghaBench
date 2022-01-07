
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_cs46xx {int midcr; int uartm; int (* active_ctrl ) (struct snd_cs46xx*,int) ;int reg_lock; int * midi_input; } ;
struct TYPE_2__ {struct snd_cs46xx* private_data; } ;


 int BA0_MIDCR ;
 int CS46XX_MODE_INPUT ;
 int CS46XX_MODE_OUTPUT ;
 int MIDCR_RIE ;
 int MIDCR_RXE ;
 int snd_cs46xx_midi_reset (struct snd_cs46xx*) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct snd_cs46xx*,int) ;

__attribute__((used)) static int snd_cs46xx_midi_input_close(struct snd_rawmidi_substream *substream)
{
 struct snd_cs46xx *chip = substream->rmidi->private_data;

 spin_lock_irq(&chip->reg_lock);
 chip->midcr &= ~(MIDCR_RXE | MIDCR_RIE);
 chip->midi_input = ((void*)0);
 if (!(chip->uartm & CS46XX_MODE_OUTPUT)) {
  snd_cs46xx_midi_reset(chip);
 } else {
  snd_cs46xx_pokeBA0(chip, BA0_MIDCR, chip->midcr);
 }
 chip->uartm &= ~CS46XX_MODE_INPUT;
 spin_unlock_irq(&chip->reg_lock);
 chip->active_ctrl(chip, -1);
 return 0;
}

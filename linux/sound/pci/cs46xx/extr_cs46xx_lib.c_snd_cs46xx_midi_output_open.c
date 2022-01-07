
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_cs46xx {int uartm; int reg_lock; int midcr; struct snd_rawmidi_substream* midi_output; int (* active_ctrl ) (struct snd_cs46xx*,int) ;} ;
struct TYPE_2__ {struct snd_cs46xx* private_data; } ;


 int BA0_MIDCR ;
 int CS46XX_MODE_INPUT ;
 int CS46XX_MODE_OUTPUT ;
 int MIDCR_TXE ;
 int snd_cs46xx_midi_reset (struct snd_cs46xx*) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct snd_cs46xx*,int) ;

__attribute__((used)) static int snd_cs46xx_midi_output_open(struct snd_rawmidi_substream *substream)
{
 struct snd_cs46xx *chip = substream->rmidi->private_data;

 chip->active_ctrl(chip, 1);

 spin_lock_irq(&chip->reg_lock);
 chip->uartm |= CS46XX_MODE_OUTPUT;
 chip->midcr |= MIDCR_TXE;
 chip->midi_output = substream;
 if (!(chip->uartm & CS46XX_MODE_INPUT)) {
  snd_cs46xx_midi_reset(chip);
 } else {
  snd_cs46xx_pokeBA0(chip, BA0_MIDCR, chip->midcr);
 }
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int open; int midi_input_lock; int midi_substream_input; struct snd_rawmidi* rmidi; } ;
struct snd_rawmidi {int dummy; } ;
typedef int irqreturn_t ;


 int DATA_AVAIL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int READ ;
 int SBP (struct snd_sb*,int ) ;
 int SB_OPEN_MIDI_INPUT_TRIGGER ;
 int inb (int ) ;
 int snd_rawmidi_receive (int ,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

irqreturn_t snd_sb8dsp_midi_interrupt(struct snd_sb *chip)
{
 struct snd_rawmidi *rmidi;
 int max = 64;
 char byte;

 if (!chip)
  return IRQ_NONE;

 rmidi = chip->rmidi;
 if (!rmidi) {
  inb(SBP(chip, DATA_AVAIL));
  return IRQ_NONE;
 }

 spin_lock(&chip->midi_input_lock);
 while (max-- > 0) {
  if (inb(SBP(chip, DATA_AVAIL)) & 0x80) {
   byte = inb(SBP(chip, READ));
   if (chip->open & SB_OPEN_MIDI_INPUT_TRIGGER) {
    snd_rawmidi_receive(chip->midi_substream_input, &byte, 1);
   }
  }
 }
 spin_unlock(&chip->midi_input_lock);
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu10k1x_midi {int tx_enable; int rx_enable; unsigned int ipr_rx; int midi_mode; unsigned int ipr_tx; int output_lock; scalar_t__ substream_output; int input_lock; scalar_t__ substream_input; int * rmidi; } ;
struct emu10k1x {int dummy; } ;


 int EMU10K1X_MIDI_MODE_INPUT ;
 int mpu401_clear_rx (struct emu10k1x*,struct emu10k1x_midi*) ;
 scalar_t__ mpu401_input_avail (struct emu10k1x*,struct emu10k1x_midi*) ;
 scalar_t__ mpu401_output_ready (struct emu10k1x*,struct emu10k1x_midi*) ;
 unsigned char mpu401_read_data (struct emu10k1x*,struct emu10k1x_midi*) ;
 int mpu401_write_data (struct emu10k1x*,struct emu10k1x_midi*,unsigned char) ;
 int snd_emu10k1x_intr_disable (struct emu10k1x*,int) ;
 int snd_rawmidi_receive (scalar_t__,unsigned char*,int) ;
 int snd_rawmidi_transmit (scalar_t__,unsigned char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void do_emu10k1x_midi_interrupt(struct emu10k1x *emu,
           struct emu10k1x_midi *midi, unsigned int status)
{
 unsigned char byte;

 if (midi->rmidi == ((void*)0)) {
  snd_emu10k1x_intr_disable(emu, midi->tx_enable | midi->rx_enable);
  return;
 }

 spin_lock(&midi->input_lock);
 if ((status & midi->ipr_rx) && mpu401_input_avail(emu, midi)) {
  if (!(midi->midi_mode & EMU10K1X_MIDI_MODE_INPUT)) {
   mpu401_clear_rx(emu, midi);
  } else {
   byte = mpu401_read_data(emu, midi);
   if (midi->substream_input)
    snd_rawmidi_receive(midi->substream_input, &byte, 1);
  }
 }
 spin_unlock(&midi->input_lock);

 spin_lock(&midi->output_lock);
 if ((status & midi->ipr_tx) && mpu401_output_ready(emu, midi)) {
  if (midi->substream_output &&
      snd_rawmidi_transmit(midi->substream_output, &byte, 1) == 1) {
   mpu401_write_data(emu, midi, byte);
  } else {
   snd_emu10k1x_intr_disable(emu, midi->tx_enable);
  }
 }
 spin_unlock(&midi->output_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_emu10k1_midi {int rx_enable; struct snd_emu10k1* emu; } ;
struct snd_emu10k1 {int dummy; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 scalar_t__ snd_BUG_ON (int) ;
 int snd_emu10k1_intr_disable (struct snd_emu10k1*,int ) ;
 int snd_emu10k1_intr_enable (struct snd_emu10k1*,int ) ;

__attribute__((used)) static void snd_emu10k1_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct snd_emu10k1 *emu;
 struct snd_emu10k1_midi *midi = (struct snd_emu10k1_midi *)substream->rmidi->private_data;
 emu = midi->emu;
 if (snd_BUG_ON(!emu))
  return;

 if (up)
  snd_emu10k1_intr_enable(emu, midi->rx_enable);
 else
  snd_emu10k1_intr_disable(emu, midi->rx_enable);
}

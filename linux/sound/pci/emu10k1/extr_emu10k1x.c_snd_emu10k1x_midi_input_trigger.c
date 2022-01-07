
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct emu10k1x_midi {int rx_enable; struct emu10k1x* emu; } ;
struct emu10k1x {int dummy; } ;
struct TYPE_2__ {struct emu10k1x_midi* private_data; } ;


 scalar_t__ snd_BUG_ON (int) ;
 int snd_emu10k1x_intr_disable (struct emu10k1x*,int ) ;
 int snd_emu10k1x_intr_enable (struct emu10k1x*,int ) ;

__attribute__((used)) static void snd_emu10k1x_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct emu10k1x *emu;
 struct emu10k1x_midi *midi = substream->rmidi->private_data;
 emu = midi->emu;
 if (snd_BUG_ON(!emu))
  return;

 if (up)
  snd_emu10k1x_intr_enable(emu, midi->rx_enable);
 else
  snd_emu10k1x_intr_disable(emu, midi->rx_enable);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_ca_midi {int rx_enable; int (* interrupt_disable ) (struct snd_ca_midi*,int ) ;int (* interrupt_enable ) (struct snd_ca_midi*,int ) ;int dev_id; } ;
struct TYPE_2__ {struct snd_ca_midi* private_data; } ;


 scalar_t__ snd_BUG_ON (int) ;
 int stub1 (struct snd_ca_midi*,int ) ;
 int stub2 (struct snd_ca_midi*,int ) ;

__attribute__((used)) static void ca_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct snd_ca_midi *midi = substream->rmidi->private_data;

 if (snd_BUG_ON(!midi->dev_id))
  return;

 if (up) {
  midi->interrupt_enable(midi,midi->rx_enable);
 } else {
  midi->interrupt_disable(midi, midi->rx_enable);
 }
}

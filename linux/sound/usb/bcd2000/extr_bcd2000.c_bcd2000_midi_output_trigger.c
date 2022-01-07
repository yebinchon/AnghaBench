
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct bcd2000 {struct snd_rawmidi_substream* midi_out_substream; int midi_out_active; } ;
struct TYPE_2__ {struct bcd2000* private_data; } ;


 int bcd2000_midi_send (struct bcd2000*) ;

__attribute__((used)) static void bcd2000_midi_output_trigger(struct snd_rawmidi_substream *substream,
      int up)
{
 struct bcd2000 *bcd2k = substream->rmidi->private_data;

 if (up) {
  bcd2k->midi_out_substream = substream;

  if (!bcd2k->midi_out_active)
   bcd2000_midi_send(bcd2k);
 } else {
  bcd2k->midi_out_substream = ((void*)0);
 }
}

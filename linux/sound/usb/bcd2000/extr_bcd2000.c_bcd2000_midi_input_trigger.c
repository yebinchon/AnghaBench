
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct bcd2000 {struct snd_rawmidi_substream* midi_receive_substream; } ;
struct TYPE_2__ {struct bcd2000* private_data; } ;



__attribute__((used)) static void bcd2000_midi_input_trigger(struct snd_rawmidi_substream *substream,
      int up)
{
 struct bcd2000 *bcd2k = substream->rmidi->private_data;
 bcd2k->midi_receive_substream = up ? substream : ((void*)0);
}

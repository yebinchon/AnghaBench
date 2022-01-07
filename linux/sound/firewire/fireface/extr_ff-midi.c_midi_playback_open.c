
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct snd_ff {int* rx_midi_error; int * rx_midi_substreams; scalar_t__* on_sysex; } ;
struct TYPE_2__ {struct snd_ff* private_data; } ;


 int WRITE_ONCE (int ,struct snd_rawmidi_substream*) ;

__attribute__((used)) static int midi_playback_open(struct snd_rawmidi_substream *substream)
{
 struct snd_ff *ff = substream->rmidi->private_data;


 ff->on_sysex[substream->number] = 0;
 ff->rx_midi_error[substream->number] = 0;

 WRITE_ONCE(ff->rx_midi_substreams[substream->number], substream);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct snd_ff {int * rx_midi_substreams; int * rx_midi_work; } ;
struct TYPE_2__ {struct snd_ff* private_data; } ;


 int WRITE_ONCE (int ,int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static int midi_playback_close(struct snd_rawmidi_substream *substream)
{
 struct snd_ff *ff = substream->rmidi->private_data;

 cancel_work_sync(&ff->rx_midi_work[substream->number]);
 WRITE_ONCE(ff->rx_midi_substreams[substream->number], ((void*)0));

 return 0;
}

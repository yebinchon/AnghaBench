
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_tscm {int * out_ports; } ;
struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_tscm* private_data; } ;


 int snd_fw_async_midi_port_finish (int *) ;

__attribute__((used)) static void midi_playback_drain(struct snd_rawmidi_substream *substream)
{
 struct snd_tscm *tscm = substream->rmidi->private_data;

 snd_fw_async_midi_port_finish(&tscm->out_ports[substream->number]);
}

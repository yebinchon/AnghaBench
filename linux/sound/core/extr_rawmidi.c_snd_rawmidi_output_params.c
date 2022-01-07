
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int use_count; int active_sensing; int runtime; scalar_t__ append; } ;
struct snd_rawmidi_params {int no_active_sensing; } ;


 int EBUSY ;
 int resize_runtime_buffer (int ,struct snd_rawmidi_params*,int) ;
 int snd_rawmidi_drain_output (struct snd_rawmidi_substream*) ;

int snd_rawmidi_output_params(struct snd_rawmidi_substream *substream,
         struct snd_rawmidi_params *params)
{
 if (substream->append && substream->use_count > 1)
  return -EBUSY;
 snd_rawmidi_drain_output(substream);
 substream->active_sensing = !params->no_active_sensing;
 return resize_runtime_buffer(substream->runtime, params, 0);
}

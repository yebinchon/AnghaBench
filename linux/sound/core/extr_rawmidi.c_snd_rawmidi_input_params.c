
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int runtime; } ;
struct snd_rawmidi_params {int dummy; } ;


 int resize_runtime_buffer (int ,struct snd_rawmidi_params*,int) ;
 int snd_rawmidi_drain_input (struct snd_rawmidi_substream*) ;

int snd_rawmidi_input_params(struct snd_rawmidi_substream *substream,
        struct snd_rawmidi_params *params)
{
 snd_rawmidi_drain_input(substream);
 return resize_runtime_buffer(substream->runtime, params, 1);
}

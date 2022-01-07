
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int runtime; } ;


 int reset_runtime_ptrs (int ,int) ;
 int snd_rawmidi_input_trigger (struct snd_rawmidi_substream*,int ) ;

int snd_rawmidi_drain_input(struct snd_rawmidi_substream *substream)
{
 snd_rawmidi_input_trigger(substream, 0);
 reset_runtime_ptrs(substream->runtime, 1);
 return 0;
}

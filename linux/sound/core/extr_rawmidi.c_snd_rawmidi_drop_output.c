
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int runtime; } ;


 int reset_runtime_ptrs (int ,int) ;
 int snd_rawmidi_output_trigger (struct snd_rawmidi_substream*,int ) ;

int snd_rawmidi_drop_output(struct snd_rawmidi_substream *substream)
{
 snd_rawmidi_output_trigger(substream, 0);
 reset_runtime_ptrs(substream->runtime, 0);
 return 0;
}

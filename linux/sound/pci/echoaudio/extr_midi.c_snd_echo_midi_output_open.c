
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct echoaudio {struct snd_rawmidi_substream* midi_out; scalar_t__ midi_full; scalar_t__ tinuse; } ;
struct TYPE_2__ {struct echoaudio* private_data; } ;



__attribute__((used)) static int snd_echo_midi_output_open(struct snd_rawmidi_substream *substream)
{
 struct echoaudio *chip = substream->rmidi->private_data;

 chip->tinuse = 0;
 chip->midi_full = 0;
 chip->midi_out = substream;
 return 0;
}

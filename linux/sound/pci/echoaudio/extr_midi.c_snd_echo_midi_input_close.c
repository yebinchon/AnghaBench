
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct echoaudio {int * midi_in; } ;
struct TYPE_2__ {struct echoaudio* private_data; } ;



__attribute__((used)) static int snd_echo_midi_input_close(struct snd_rawmidi_substream *substream)
{
 struct echoaudio *chip = substream->rmidi->private_data;

 chip->midi_in = ((void*)0);
 return 0;
}

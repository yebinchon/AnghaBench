
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct midi_runtime {scalar_t__ out; } ;
struct TYPE_2__ {struct midi_runtime* private_data; } ;


 int msleep (int) ;

__attribute__((used)) static void usb6fire_midi_out_drain(struct snd_rawmidi_substream *alsa_sub)
{
 struct midi_runtime *rt = alsa_sub->rmidi->private_data;
 int retry = 0;

 while (rt->out && retry++ < 100)
  msleep(10);
}

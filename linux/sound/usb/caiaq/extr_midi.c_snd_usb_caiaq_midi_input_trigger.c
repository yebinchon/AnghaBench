
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_caiaqdev {struct snd_rawmidi_substream* midi_receive_substream; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_usb_caiaqdev* private_data; } ;



__attribute__((used)) static void snd_usb_caiaq_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct snd_usb_caiaqdev *cdev = substream->rmidi->private_data;

 if (!cdev)
  return;

 cdev->midi_receive_substream = up ? substream : ((void*)0);
}

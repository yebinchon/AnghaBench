
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_caiaqdev {int midi_receive_substream; } ;


 int snd_rawmidi_receive (int ,char const*,int) ;

void snd_usb_caiaq_midi_handle_input(struct snd_usb_caiaqdev *cdev,
         int port, const char *buf, int len)
{
 if (!cdev->midi_receive_substream)
  return;

 snd_rawmidi_receive(cdev->midi_receive_substream, buf, len);
}

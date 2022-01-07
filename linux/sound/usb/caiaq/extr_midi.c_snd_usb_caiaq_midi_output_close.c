
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_caiaqdev {scalar_t__ midi_out_active; int midi_out_urb; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_usb_caiaqdev* private_data; } ;


 int usb_kill_urb (int *) ;

__attribute__((used)) static int snd_usb_caiaq_midi_output_close(struct snd_rawmidi_substream *substream)
{
 struct snd_usb_caiaqdev *cdev = substream->rmidi->private_data;
 if (cdev->midi_out_active) {
  usb_kill_urb(&cdev->midi_out_urb);
  cdev->midi_out_active = 0;
 }
 return 0;
}

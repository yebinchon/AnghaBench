
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ status; struct snd_usb_caiaqdev* context; } ;
struct snd_usb_caiaqdev {int midi_out_substream; scalar_t__ midi_out_active; } ;


 int snd_usb_caiaq_midi_send (struct snd_usb_caiaqdev*,int ) ;

void snd_usb_caiaq_midi_output_done(struct urb* urb)
{
 struct snd_usb_caiaqdev *cdev = urb->context;

 cdev->midi_out_active = 0;
 if (urb->status != 0)
  return;

 if (!cdev->midi_out_substream)
  return;

 snd_usb_caiaq_midi_send(cdev, cdev->midi_out_substream);
}

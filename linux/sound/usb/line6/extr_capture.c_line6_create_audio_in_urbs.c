
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_line6 {int iso_buffers; TYPE_2__* properties; int usbdev; } ;
struct urb {int start_frame; int complete; scalar_t__ error_count; int interval; int number_of_packets; int transfer_flags; int pipe; int dev; } ;
struct TYPE_3__ {struct urb** urbs; } ;
struct snd_line6_pcm {TYPE_1__ in; struct usb_line6* line6; } ;
struct TYPE_4__ {int ep_audio_r; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LINE6_ISO_INTERVAL ;
 int LINE6_ISO_PACKETS ;
 int URB_ISO_ASAP ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int audio_in_callback ;
 struct urb** kcalloc (int,int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_rcvisocpipe (int ,int) ;

int line6_create_audio_in_urbs(struct snd_line6_pcm *line6pcm)
{
 struct usb_line6 *line6 = line6pcm->line6;
 int i;

 line6pcm->in.urbs = kcalloc(line6->iso_buffers, sizeof(struct urb *),
        GFP_KERNEL);
 if (line6pcm->in.urbs == ((void*)0))
  return -ENOMEM;


 for (i = 0; i < line6->iso_buffers; ++i) {
  struct urb *urb;


  urb = line6pcm->in.urbs[i] =
      usb_alloc_urb(LINE6_ISO_PACKETS, GFP_KERNEL);

  if (urb == ((void*)0))
   return -ENOMEM;

  urb->dev = line6->usbdev;
  urb->pipe =
      usb_rcvisocpipe(line6->usbdev,
        line6->properties->ep_audio_r &
        USB_ENDPOINT_NUMBER_MASK);
  urb->transfer_flags = URB_ISO_ASAP;
  urb->start_frame = -1;
  urb->number_of_packets = LINE6_ISO_PACKETS;
  urb->interval = LINE6_ISO_INTERVAL;
  urb->error_count = 0;
  urb->complete = audio_in_callback;
 }

 return 0;
}

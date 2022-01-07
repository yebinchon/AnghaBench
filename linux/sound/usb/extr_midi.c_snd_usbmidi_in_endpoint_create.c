
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct snd_usb_midi_in_endpoint {TYPE_1__** urbs; struct snd_usb_midi* umidi; } ;
struct snd_usb_midi_endpoint_info {int in_ep; int in_interval; } ;
struct snd_usb_midi_endpoint {struct snd_usb_midi_in_endpoint* in; } ;
struct snd_usb_midi {TYPE_2__* dev; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_11__ {int transfer_flags; int transfer_dma; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int INPUT_URBS ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_err (int *,char*,int ) ;
 struct snd_usb_midi_in_endpoint* kzalloc (int,int ) ;
 int snd_usbmidi_in_endpoint_delete (struct snd_usb_midi_in_endpoint*) ;
 int snd_usbmidi_in_urb_complete ;
 void* usb_alloc_coherent (TYPE_2__*,int,int ,int *) ;
 TYPE_1__* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (TYPE_1__*,TYPE_2__*,unsigned int,void*,int,int ,struct snd_usb_midi_in_endpoint*) ;
 int usb_fill_int_urb (TYPE_1__*,TYPE_2__*,unsigned int,void*,int,int ,struct snd_usb_midi_in_endpoint*,int ) ;
 int usb_maxpacket (TYPE_2__*,unsigned int,int ) ;
 unsigned int usb_rcvbulkpipe (TYPE_2__*,int ) ;
 unsigned int usb_rcvintpipe (TYPE_2__*,int ) ;
 int usb_urb_ep_type_check (TYPE_1__*) ;

__attribute__((used)) static int snd_usbmidi_in_endpoint_create(struct snd_usb_midi *umidi,
       struct snd_usb_midi_endpoint_info *ep_info,
       struct snd_usb_midi_endpoint *rep)
{
 struct snd_usb_midi_in_endpoint *ep;
 void *buffer;
 unsigned int pipe;
 int length;
 unsigned int i;
 int err;

 rep->in = ((void*)0);
 ep = kzalloc(sizeof(*ep), GFP_KERNEL);
 if (!ep)
  return -ENOMEM;
 ep->umidi = umidi;

 for (i = 0; i < INPUT_URBS; ++i) {
  ep->urbs[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!ep->urbs[i]) {
   err = -ENOMEM;
   goto error;
  }
 }
 if (ep_info->in_interval)
  pipe = usb_rcvintpipe(umidi->dev, ep_info->in_ep);
 else
  pipe = usb_rcvbulkpipe(umidi->dev, ep_info->in_ep);
 length = usb_maxpacket(umidi->dev, pipe, 0);
 for (i = 0; i < INPUT_URBS; ++i) {
  buffer = usb_alloc_coherent(umidi->dev, length, GFP_KERNEL,
         &ep->urbs[i]->transfer_dma);
  if (!buffer) {
   err = -ENOMEM;
   goto error;
  }
  if (ep_info->in_interval)
   usb_fill_int_urb(ep->urbs[i], umidi->dev,
      pipe, buffer, length,
      snd_usbmidi_in_urb_complete,
      ep, ep_info->in_interval);
  else
   usb_fill_bulk_urb(ep->urbs[i], umidi->dev,
       pipe, buffer, length,
       snd_usbmidi_in_urb_complete, ep);
  ep->urbs[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
  err = usb_urb_ep_type_check(ep->urbs[i]);
  if (err < 0) {
   dev_err(&umidi->dev->dev, "invalid MIDI in EP %x\n",
    ep_info->in_ep);
   goto error;
  }
 }

 rep->in = ep;
 return 0;

 error:
 snd_usbmidi_in_endpoint_delete(ep);
 return -ENOMEM;
}

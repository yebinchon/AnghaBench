
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_urb {int submitted; int instance; scalar_t__ buffer; struct hiface_chip* chip; } ;
struct hiface_chip {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCM_PACKET_SIZE ;
 int init_usb_anchor (int *) ;
 scalar_t__ kzalloc (int ,int ) ;
 int usb_fill_bulk_urb (int *,int ,int ,void*,int ,void (*) (struct urb*),struct pcm_urb*) ;
 int usb_init_urb (int *) ;
 int usb_sndbulkpipe (int ,unsigned int) ;
 scalar_t__ usb_urb_ep_type_check (int *) ;

__attribute__((used)) static int hiface_pcm_init_urb(struct pcm_urb *urb,
          struct hiface_chip *chip,
          unsigned int ep,
          void (*handler)(struct urb *))
{
 urb->chip = chip;
 usb_init_urb(&urb->instance);

 urb->buffer = kzalloc(PCM_PACKET_SIZE, GFP_KERNEL);
 if (!urb->buffer)
  return -ENOMEM;

 usb_fill_bulk_urb(&urb->instance, chip->dev,
     usb_sndbulkpipe(chip->dev, ep), (void *)urb->buffer,
     PCM_PACKET_SIZE, handler, urb);
 if (usb_urb_ep_type_check(&urb->instance))
  return -EINVAL;
 init_usb_anchor(&urb->submitted);

 return 0;
}

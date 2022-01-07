
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_dma; int transfer_buffer; } ;
struct snd_usb_midi {int dev; } ;


 int usb_free_coherent (int ,unsigned int,int ,int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void free_urb_and_buffer(struct snd_usb_midi *umidi, struct urb *urb,
    unsigned int buffer_length)
{
 usb_free_coherent(umidi->dev, buffer_length,
     urb->transfer_buffer, urb->transfer_dma);
 usb_free_urb(urb);
}

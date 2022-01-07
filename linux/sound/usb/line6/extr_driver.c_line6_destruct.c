
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int * urb_listen; int buffer_listen; int buffer_message; struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;
struct snd_card {struct usb_line6* private_data; } ;


 int kfree (int ) ;
 int usb_free_urb (int *) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static void line6_destruct(struct snd_card *card)
{
 struct usb_line6 *line6 = card->private_data;
 struct usb_device *usbdev = line6->usbdev;




 kfree(line6->buffer_message);

 kfree(line6->buffer_listen);


 usb_free_urb(line6->urb_listen);
 line6->urb_listen = ((void*)0);


 usb_put_dev(usbdev);
}

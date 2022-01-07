
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct snd_card {int dummy; } ;


 int dev_set_drvdata (int *,struct snd_card*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int usX2Y_usb_probe (int ,struct usb_interface*,struct usb_device_id const*,struct snd_card**) ;

__attribute__((used)) static int snd_usX2Y_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct snd_card *card;
 int err;

 err = usX2Y_usb_probe(interface_to_usbdev(intf), intf, id, &card);
 if (err < 0)
  return err;
 dev_set_drvdata(&intf->dev, card);
 return 0;
}

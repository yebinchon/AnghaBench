
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dev; } ;
struct snd_card {int dummy; } ;


 int caiaqdev (struct snd_card*) ;
 int create_card (struct usb_device*,struct usb_interface*,struct snd_card**) ;
 int dev_err (int *,char*,int) ;
 int init_card (int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int snd_card_free (struct snd_card*) ;
 int usb_set_intfdata (struct usb_interface*,struct snd_card*) ;

__attribute__((used)) static int snd_probe(struct usb_interface *intf,
       const struct usb_device_id *id)
{
 int ret;
 struct snd_card *card = ((void*)0);
 struct usb_device *usb_dev = interface_to_usbdev(intf);

 ret = create_card(usb_dev, intf, &card);

 if (ret < 0)
  return ret;

 usb_set_intfdata(intf, card);
 ret = init_card(caiaqdev(card));
 if (ret < 0) {
  dev_err(&usb_dev->dev, "unable to init card! (ret=%d)\n", ret);
  snd_card_free(card);
  return ret;
 }

 return 0;
}

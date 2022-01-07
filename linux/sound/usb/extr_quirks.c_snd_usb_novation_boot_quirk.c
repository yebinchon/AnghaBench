
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int usb_set_interface (struct usb_device*,int ,int) ;

__attribute__((used)) static int snd_usb_novation_boot_quirk(struct usb_device *dev)
{


 usb_set_interface(dev, 0, 1);
 return 0;
}

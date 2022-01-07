
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int USB_ID_PRODUCT (unsigned int) ;
 int USB_ID_VENDOR (unsigned int) ;
 int dev_info (int *,char*,int ,int ,int ,int ) ;
 int * quirk_alias ;
 int sscanf (int ,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static bool get_alias_id(struct usb_device *dev, unsigned int *id)
{
 int i;
 unsigned int src, dst;

 for (i = 0; i < ARRAY_SIZE(quirk_alias); i++) {
  if (!quirk_alias[i] ||
      sscanf(quirk_alias[i], "%x:%x", &src, &dst) != 2 ||
      src != *id)
   continue;
  dev_info(&dev->dev,
    "device (%04x:%04x): applying quirk alias %04x:%04x\n",
    USB_ID_VENDOR(*id), USB_ID_PRODUCT(*id),
    USB_ID_VENDOR(dst), USB_ID_PRODUCT(dst));
  *id = dst;
  return 1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dev; } ;
struct usb_device {int dev; } ;
struct ihex_record {int address; int* data; int len; } ;
struct firmware {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,char const*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct ihex_record*) ;
 struct ihex_record* kmalloc (int,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int usb6fire_fw_ezusb_write (struct usb_device*,int,int,int*,int) ;
 int usb6fire_fw_ihex_init (struct firmware const*,struct ihex_record*) ;
 scalar_t__ usb6fire_fw_ihex_next_record (struct ihex_record*) ;

__attribute__((used)) static int usb6fire_fw_ezusb_upload(
  struct usb_interface *intf, const char *fwname,
  unsigned int postaddr, u8 *postdata, unsigned int postlen)
{
 int ret;
 u8 data;
 struct usb_device *device = interface_to_usbdev(intf);
 const struct firmware *fw = ((void*)0);
 struct ihex_record *rec = kmalloc(sizeof(struct ihex_record),
   GFP_KERNEL);

 if (!rec)
  return -ENOMEM;

 ret = request_firmware(&fw, fwname, &device->dev);
 if (ret < 0) {
  kfree(rec);
  dev_err(&intf->dev,
   "error requesting ezusb firmware %s.\n", fwname);
  return ret;
 }
 ret = usb6fire_fw_ihex_init(fw, rec);
 if (ret < 0) {
  kfree(rec);
  release_firmware(fw);
  dev_err(&intf->dev,
   "error validating ezusb firmware %s.\n", fwname);
  return ret;
 }

 data = 0x01;
 ret = usb6fire_fw_ezusb_write(device, 0xa0, 0xe600, &data, 1);
 if (ret < 0) {
  kfree(rec);
  release_firmware(fw);
  dev_err(&intf->dev,
   "unable to upload ezusb firmware %s: begin message.\n",
   fwname);
  return ret;
 }

 while (usb6fire_fw_ihex_next_record(rec)) {
  ret = usb6fire_fw_ezusb_write(device, 0xa0, rec->address,
    rec->data, rec->len);
  if (ret < 0) {
   kfree(rec);
   release_firmware(fw);
   dev_err(&intf->dev,
    "unable to upload ezusb firmware %s: data urb.\n",
    fwname);
   return ret;
  }
 }

 release_firmware(fw);
 kfree(rec);
 if (postdata) {
  ret = usb6fire_fw_ezusb_write(device, 0xa0, postaddr,
    postdata, postlen);
  if (ret < 0) {
   dev_err(&intf->dev,
    "unable to upload ezusb firmware %s: post urb.\n",
    fwname);
   return ret;
  }
 }

 data = 0x00;
 ret = usb6fire_fw_ezusb_write(device, 0xa0, 0xe600, &data, 1);
 if (ret < 0) {
  dev_err(&intf->dev,
   "unable to upload ezusb firmware %s: end message.\n",
   fwname);
  return ret;
 }
 return 0;
}

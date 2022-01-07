
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dev; } ;
struct usb_device {int dev; } ;
struct firmware {char* data; int size; } ;


 int EIO ;
 int ENOMEM ;
 int FPGA_BUFSIZE ;
 int GFP_KERNEL ;
 int bitrev8 (int ) ;
 int dev_err (int *,char*,...) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int usb6fire_fw_ezusb_write (struct usb_device*,int,int ,int *,int ) ;
 int usb6fire_fw_fpga_write (struct usb_device*,int *,int) ;

__attribute__((used)) static int usb6fire_fw_fpga_upload(
  struct usb_interface *intf, const char *fwname)
{
 int ret;
 int i;
 struct usb_device *device = interface_to_usbdev(intf);
 u8 *buffer = kmalloc(FPGA_BUFSIZE, GFP_KERNEL);
 const char *c;
 const char *end;
 const struct firmware *fw;

 if (!buffer)
  return -ENOMEM;

 ret = request_firmware(&fw, fwname, &device->dev);
 if (ret < 0) {
  dev_err(&intf->dev, "unable to get fpga firmware %s.\n",
    fwname);
  kfree(buffer);
  return -EIO;
 }

 c = fw->data;
 end = fw->data + fw->size;

 ret = usb6fire_fw_ezusb_write(device, 8, 0, ((void*)0), 0);
 if (ret < 0) {
  kfree(buffer);
  release_firmware(fw);
  dev_err(&intf->dev,
   "unable to upload fpga firmware: begin urb.\n");
  return ret;
 }

 while (c != end) {
  for (i = 0; c != end && i < FPGA_BUFSIZE; i++, c++)
   buffer[i] = bitrev8((u8)*c);

  ret = usb6fire_fw_fpga_write(device, buffer, i);
  if (ret < 0) {
   release_firmware(fw);
   kfree(buffer);
   dev_err(&intf->dev,
    "unable to upload fpga firmware: fw urb.\n");
   return ret;
  }
 }
 release_firmware(fw);
 kfree(buffer);

 ret = usb6fire_fw_ezusb_write(device, 9, 0, ((void*)0), 0);
 if (ret < 0) {
  dev_err(&intf->dev,
   "unable to upload fpga firmware: end urb.\n");
  return ret;
 }
 return 0;
}

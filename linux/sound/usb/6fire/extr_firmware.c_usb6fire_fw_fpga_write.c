
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int EIO ;
 int FPGA_EP ;
 int HZ ;
 int usb_bulk_msg (struct usb_device*,int ,char*,int,int*,int ) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usb6fire_fw_fpga_write(struct usb_device *device,
  char *data, int len)
{
 int actual_len;
 int ret;

 ret = usb_bulk_msg(device, usb_sndbulkpipe(device, FPGA_EP), data, len,
   &actual_len, HZ);
 if (ret < 0)
  return ret;
 else if (actual_len != len)
  return -EIO;
 return 0;
}

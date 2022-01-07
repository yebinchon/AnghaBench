
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* dev; } ;
struct snd_usb_caiaqdev {unsigned char* ep1_out_buf; TYPE_1__ chip; } ;


 int EIO ;
 int EP1_BUFSIZE ;
 int memcpy (int ,unsigned char const*,int) ;
 int usb_bulk_msg (struct usb_device*,int ,unsigned char*,int,int*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

int snd_usb_caiaq_send_command_bank(struct snd_usb_caiaqdev *cdev,
          unsigned char command,
          unsigned char bank,
          const unsigned char *buffer,
          int len)
{
 int actual_len;
 struct usb_device *usb_dev = cdev->chip.dev;

 if (!usb_dev)
  return -EIO;

 if (len > EP1_BUFSIZE - 2)
  len = EP1_BUFSIZE - 2;

 if (buffer && len > 0)
  memcpy(cdev->ep1_out_buf+2, buffer, len);

 cdev->ep1_out_buf[0] = command;
 cdev->ep1_out_buf[1] = bank;

 return usb_bulk_msg(usb_dev, usb_sndbulkpipe(usb_dev, 1),
      cdev->ep1_out_buf, len+2, &actual_len, 200);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int DUMP_PREFIX_NONE ;
 int EINVAL ;
 int KERN_DEBUG ;
 int memset (int *,int ,int) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,int,int) ;
 scalar_t__ snd_usb_pipe_sanity_check (struct usb_device*,int ) ;
 int usb_interrupt_msg (struct usb_device*,int ,int *,int,int*,int) ;
 int usb_rcvintpipe (struct usb_device*,int) ;
 int usb_sndintpipe (struct usb_device*,int) ;

__attribute__((used)) static int snd_usb_motu_microbookii_communicate(struct usb_device *dev, u8 *buf,
      int buf_size, int *length)
{
 int err, actual_length;

 if (snd_usb_pipe_sanity_check(dev, usb_sndintpipe(dev, 0x01)))
  return -EINVAL;
 err = usb_interrupt_msg(dev, usb_sndintpipe(dev, 0x01), buf, *length,
    &actual_length, 1000);
 if (err < 0)
  return err;

 print_hex_dump(KERN_DEBUG, "MicroBookII snd: ", DUMP_PREFIX_NONE, 16, 1,
         buf, actual_length, 0);

 memset(buf, 0, buf_size);

 if (snd_usb_pipe_sanity_check(dev, usb_rcvintpipe(dev, 0x82)))
  return -EINVAL;
 err = usb_interrupt_msg(dev, usb_rcvintpipe(dev, 0x82), buf, buf_size,
    &actual_length, 1000);
 if (err < 0)
  return err;

 print_hex_dump(KERN_DEBUG, "MicroBookII rcv: ", DUMP_PREFIX_NONE, 16, 1,
         buf, actual_length, 0);

 *length = actual_length;
 return 0;
}

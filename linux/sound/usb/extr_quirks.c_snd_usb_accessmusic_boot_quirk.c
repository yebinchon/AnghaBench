
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmemdup (int const*,int ,int ) ;
 scalar_t__ snd_usb_pipe_sanity_check (struct usb_device*,int ) ;
 int usb_interrupt_msg (struct usb_device*,int ,void*,int ,int*,int) ;
 int usb_sndintpipe (struct usb_device*,int) ;

__attribute__((used)) static int snd_usb_accessmusic_boot_quirk(struct usb_device *dev)
{
 int err, actual_length;

 static const u8 seq[] = { 0x4e, 0x73, 0x52, 0x01 };
 void *buf;

 if (snd_usb_pipe_sanity_check(dev, usb_sndintpipe(dev, 0x05)))
  return -EINVAL;
 buf = kmemdup(seq, ARRAY_SIZE(seq), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 err = usb_interrupt_msg(dev, usb_sndintpipe(dev, 0x05), buf,
   ARRAY_SIZE(seq), &actual_length, 1000);
 kfree(buf);
 if (err < 0)
  return err;

 return 0;
}

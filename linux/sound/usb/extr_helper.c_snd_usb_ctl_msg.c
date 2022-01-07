
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int kfree (void*) ;
 void* kmemdup (void*,int ,int ) ;
 int memcpy (void*,void*,int ) ;
 int snd_usb_ctl_msg_quirk (struct usb_device*,unsigned int,int,int,int ,int ,void*,int ) ;
 scalar_t__ snd_usb_pipe_sanity_check (struct usb_device*,unsigned int) ;
 int usb_control_msg (struct usb_device*,unsigned int,int,int,int ,int ,void*,int ,int) ;

int snd_usb_ctl_msg(struct usb_device *dev, unsigned int pipe, __u8 request,
      __u8 requesttype, __u16 value, __u16 index, void *data,
      __u16 size)
{
 int err;
 void *buf = ((void*)0);
 int timeout;

 if (snd_usb_pipe_sanity_check(dev, pipe))
  return -EINVAL;

 if (size > 0) {
  buf = kmemdup(data, size, GFP_KERNEL);
  if (!buf)
   return -ENOMEM;
 }

 if (requesttype & USB_DIR_IN)
  timeout = USB_CTRL_GET_TIMEOUT;
 else
  timeout = USB_CTRL_SET_TIMEOUT;

 err = usb_control_msg(dev, pipe, request, requesttype,
         value, index, buf, size, timeout);

 if (size > 0) {
  memcpy(data, buf, size);
  kfree(buf);
 }

 snd_usb_ctl_msg_quirk(dev, pipe, request, requesttype,
         value, index, data, size);

 return err;
}

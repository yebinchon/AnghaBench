
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int desc; } ;
struct usb_device {int dummy; } ;


 int EINVAL ;




 size_t usb_endpoint_type (int *) ;
 struct usb_host_endpoint* usb_pipe_endpoint (struct usb_device*,unsigned int) ;
 int const usb_pipetype (unsigned int) ;

int snd_usb_pipe_sanity_check(struct usb_device *dev, unsigned int pipe)
{
 static const int pipetypes[4] = {
  130, 128, 131, 129
 };
 struct usb_host_endpoint *ep;

 ep = usb_pipe_endpoint(dev, pipe);
 if (!ep || usb_pipetype(pipe) != pipetypes[usb_endpoint_type(&ep->desc)])
  return -EINVAL;
 return 0;
}

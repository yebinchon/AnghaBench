
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {int card; TYPE_1__* properties; int (* disconnect ) (struct usb_line6*) ;scalar_t__ line6pcm; int * urb_listen; int startup_work; struct usb_device* usbdev; } ;
struct usb_interface {int dev; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ WARN_ON (int) ;
 int cancel_delayed_work (int *) ;
 int dev_info (int *,char*,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int line6_pcm_disconnect (scalar_t__) ;
 int line6_stop_listen (struct usb_line6*) ;
 int snd_card_disconnect (int ) ;
 int snd_card_free_when_closed (int ) ;
 int stub1 (struct usb_line6*) ;
 struct usb_line6* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

void line6_disconnect(struct usb_interface *interface)
{
 struct usb_line6 *line6 = usb_get_intfdata(interface);
 struct usb_device *usbdev = interface_to_usbdev(interface);

 if (!line6)
  return;

 if (WARN_ON(usbdev != line6->usbdev))
  return;

 cancel_delayed_work(&line6->startup_work);

 if (line6->urb_listen != ((void*)0))
  line6_stop_listen(line6);

 snd_card_disconnect(line6->card);
 if (line6->line6pcm)
  line6_pcm_disconnect(line6->line6pcm);
 if (line6->disconnect)
  line6->disconnect(line6);

 dev_info(&interface->dev, "Line 6 %s now disconnected\n",
   line6->properties->name);


 usb_set_intfdata(interface, ((void*)0));

 snd_card_free_when_closed(line6->card);
}

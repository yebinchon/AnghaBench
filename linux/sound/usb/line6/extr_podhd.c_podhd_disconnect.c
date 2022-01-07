
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* properties; } ;
struct usb_line6_podhd {TYPE_2__ line6; } ;
struct usb_line6 {int usbdev; } ;
struct usb_interface {int dummy; } ;
struct TYPE_3__ {int capabilities; int ctrl_if; } ;


 int LINE6_CAP_CONTROL_INFO ;
 struct usb_line6_podhd* line6_to_podhd (struct usb_line6*) ;
 int podhd_driver ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct usb_interface* usb_ifnum_to_if (int ,int ) ;

__attribute__((used)) static void podhd_disconnect(struct usb_line6 *line6)
{
 struct usb_line6_podhd *pod = line6_to_podhd(line6);

 if (pod->line6.properties->capabilities & LINE6_CAP_CONTROL_INFO) {
  struct usb_interface *intf;

  intf = usb_ifnum_to_if(line6->usbdev,
     pod->line6.properties->ctrl_if);
  if (intf)
   usb_driver_release_interface(&podhd_driver, intf);
 }
}

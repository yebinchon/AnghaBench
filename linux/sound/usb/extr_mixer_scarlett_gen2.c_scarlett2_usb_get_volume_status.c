
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
struct scarlett2_usb_volume_status {int dummy; } ;


 int SCARLETT2_USB_VOLUME_STATUS_OFFSET ;
 int scarlett2_usb_get (struct usb_mixer_interface*,int ,struct scarlett2_usb_volume_status*,int) ;

__attribute__((used)) static int scarlett2_usb_get_volume_status(
 struct usb_mixer_interface *mixer,
 struct scarlett2_usb_volume_status *buf)
{
 return scarlett2_usb_get(mixer, SCARLETT2_USB_VOLUME_STATUS_OFFSET,
     buf, sizeof(*buf));
}

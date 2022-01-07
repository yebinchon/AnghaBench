
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_iso_packet_descriptor {int dummy; } ;
struct urb {int dummy; } ;
struct TYPE_2__ {int data_alignment; } ;
struct snd_usb_caiaqdev {TYPE_1__ spec; } ;


 int fill_out_urb_mode_0 (struct snd_usb_caiaqdev*,struct urb*,struct usb_iso_packet_descriptor const*) ;
 int fill_out_urb_mode_3 (struct snd_usb_caiaqdev*,struct urb*,struct usb_iso_packet_descriptor const*) ;

__attribute__((used)) static inline void fill_out_urb(struct snd_usb_caiaqdev *cdev,
    struct urb *urb,
    const struct usb_iso_packet_descriptor *iso)
{
 switch (cdev->spec.data_alignment) {
 case 0:
 case 2:
  fill_out_urb_mode_0(cdev, urb, iso);
  break;
 case 3:
  fill_out_urb_mode_3(cdev, urb, iso);
  break;
 }
}

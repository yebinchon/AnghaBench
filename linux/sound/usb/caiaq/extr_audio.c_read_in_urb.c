
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_iso_packet_descriptor {scalar_t__ actual_length; } ;
struct urb {int dummy; } ;
struct TYPE_2__ {int data_alignment; } ;
struct snd_usb_caiaqdev {scalar_t__ bpp; int warned; scalar_t__ output_panic; scalar_t__ input_panic; TYPE_1__ spec; int streaming; } ;
struct device {int dummy; } ;


 struct device* caiaqdev_to_dev (struct snd_usb_caiaqdev*) ;
 int dev_warn (struct device*,char*,char*,char*) ;
 int read_in_urb_mode0 (struct snd_usb_caiaqdev*,struct urb const*,struct usb_iso_packet_descriptor const*) ;
 int read_in_urb_mode2 (struct snd_usb_caiaqdev*,struct urb const*,struct usb_iso_packet_descriptor const*) ;
 int read_in_urb_mode3 (struct snd_usb_caiaqdev*,struct urb const*,struct usb_iso_packet_descriptor const*) ;

__attribute__((used)) static void read_in_urb(struct snd_usb_caiaqdev *cdev,
   const struct urb *urb,
   const struct usb_iso_packet_descriptor *iso)
{
 struct device *dev = caiaqdev_to_dev(cdev);

 if (!cdev->streaming)
  return;

 if (iso->actual_length < cdev->bpp)
  return;

 switch (cdev->spec.data_alignment) {
 case 0:
  read_in_urb_mode0(cdev, urb, iso);
  break;
 case 2:
  read_in_urb_mode2(cdev, urb, iso);
  break;
 case 3:
  read_in_urb_mode3(cdev, urb, iso);
  break;
 }

 if ((cdev->input_panic || cdev->output_panic) && !cdev->warned) {
  dev_warn(dev, "streaming error detected %s %s\n",
    cdev->input_panic ? "(input)" : "",
    cdev->output_panic ? "(output)" : "");
  cdev->warned = 1;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bAlternateSetting; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct ua101 {TYPE_3__* dev; int states; TYPE_2__** intf; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct usb_host_interface* cur_altsetting; } ;


 int DISCONNECTED ;
 int dev_warn (int *,char*,int,int ) ;
 int test_bit (int ,int *) ;
 int usb_error_string (int) ;
 int usb_set_interface (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void disable_iso_interface(struct ua101 *ua, unsigned int intf_index)
{
 struct usb_host_interface *alts;

 if (!ua->intf[intf_index])
  return;

 alts = ua->intf[intf_index]->cur_altsetting;
 if (alts->desc.bAlternateSetting != 0) {
  int err = usb_set_interface(ua->dev,
         alts->desc.bInterfaceNumber, 0);
  if (err < 0 && !test_bit(DISCONNECTED, &ua->states))
   dev_warn(&ua->dev->dev,
     "interface reset failed; error %d: %s\n",
     err, usb_error_string(err));
 }
}

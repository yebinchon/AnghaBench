
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct usb_line6 {int startup_work; struct usb_device* usbdev; } ;
struct usb_line6_toneport {size_t source; struct usb_line6 line6; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int code; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TONEPORT_PCM_DELAY ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 scalar_t__ ktime_get_real_seconds () ;
 int line6_write_data (struct usb_line6*,int,scalar_t__*,int) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ toneport_has_led (struct usb_line6_toneport*) ;
 scalar_t__ toneport_has_source_select (struct usb_line6_toneport*) ;
 int toneport_send_cmd (struct usb_device*,int,int) ;
 TYPE_1__* toneport_source_info ;
 int toneport_update_led (struct usb_line6_toneport*) ;

__attribute__((used)) static int toneport_setup(struct usb_line6_toneport *toneport)
{
 u32 *ticks;
 struct usb_line6 *line6 = &toneport->line6;
 struct usb_device *usbdev = line6->usbdev;

 ticks = kmalloc(sizeof(*ticks), GFP_KERNEL);
 if (!ticks)
  return -ENOMEM;



 *ticks = (u32)ktime_get_real_seconds();
 line6_write_data(line6, 0x80c6, ticks, 4);
 kfree(ticks);


 toneport_send_cmd(usbdev, 0x0301, 0x0000);


 if (toneport_has_source_select(toneport))
  toneport_send_cmd(usbdev,
      toneport_source_info[toneport->source].code,
      0x0000);

 if (toneport_has_led(toneport))
  toneport_update_led(toneport);

 schedule_delayed_work(&toneport->line6.startup_work,
         msecs_to_jiffies(TONEPORT_PCM_DELAY * 1000));
 return 0;
}

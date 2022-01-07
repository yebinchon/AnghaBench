
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int usbdev; } ;
struct usb_line6_toneport {TYPE_3__* leds; TYPE_1__ line6; } ;
struct TYPE_5__ {int brightness; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;


 int toneport_send_cmd (int ,int,int) ;

__attribute__((used)) static void toneport_update_led(struct usb_line6_toneport *toneport)
{
 toneport_send_cmd(toneport->line6.usbdev,
     (toneport->leds[0].dev.brightness << 8) | 0x0002,
     toneport->leds[1].dev.brightness);
}

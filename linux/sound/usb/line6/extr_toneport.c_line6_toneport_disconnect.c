
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_toneport {int dummy; } ;
struct usb_line6 {int dummy; } ;


 struct usb_line6_toneport* line6_to_toneport (struct usb_line6*) ;
 scalar_t__ toneport_has_led (struct usb_line6_toneport*) ;
 int toneport_remove_leds (struct usb_line6_toneport*) ;

__attribute__((used)) static void line6_toneport_disconnect(struct usb_line6 *line6)
{
 struct usb_line6_toneport *toneport = line6_to_toneport(line6);

 if (toneport_has_led(toneport))
  toneport_remove_leds(toneport);
}

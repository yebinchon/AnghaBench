
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_toneport {int type; } ;





__attribute__((used)) static bool toneport_has_led(struct usb_line6_toneport *toneport)
{
 switch (toneport->type) {
 case 129:
 case 128:

  return 1;

 default:
  return 0;
 }
}

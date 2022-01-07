
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_toneport {struct toneport_led* leds; } ;
struct toneport_led {int registered; int dev; } ;


 int led_classdev_unregister (int *) ;

__attribute__((used)) static void toneport_remove_leds(struct usb_line6_toneport *toneport)
{
 struct toneport_led *led;
 int i;

 for (i = 0; i < 2; i++) {
  led = &toneport->leds[i];
  if (!led->registered)
   break;
  led_classdev_unregister(&led->dev);
  led->registered = 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int card; } ;
struct usb_line6_variax {int startup_progress; TYPE_1__ line6; } ;
struct usb_line6 {int startup_work; } ;



 int VARIAX_STARTUP_DELAY1 ;
 int VARIAX_STARTUP_DELAY4 ;


 struct usb_line6_variax* line6_to_variax (struct usb_line6*) ;
 int line6_version_request_async (struct usb_line6*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int snd_card_register (int ) ;
 int variax_activate_async (struct usb_line6_variax*,int) ;

__attribute__((used)) static void variax_startup(struct usb_line6 *line6)
{
 struct usb_line6_variax *variax = line6_to_variax(line6);

 switch (variax->startup_progress) {
 case 128:

  schedule_delayed_work(&line6->startup_work,
          msecs_to_jiffies(VARIAX_STARTUP_DELAY1));

  line6_version_request_async(line6);
  break;
 case 130:

  variax_activate_async(variax, 1);
  variax->startup_progress = 129;
  schedule_delayed_work(&line6->startup_work,
          msecs_to_jiffies(VARIAX_STARTUP_DELAY4));
  break;
 case 129:

  snd_card_register(variax->line6.card);
  break;
 }
}

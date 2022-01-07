
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int startup_progress; int serial_number; int line6; } ;
struct usb_line6 {int ifcdev; int card; } ;


 int POD_STARTUP_DONE ;


 int dev_err (int ,char*) ;
 int line6_read_serial_number (int *,int *) ;
 struct usb_line6_pod* line6_to_pod (struct usb_line6*) ;
 int line6_version_request_async (struct usb_line6*) ;
 int snd_card_register (int ) ;

__attribute__((used)) static void pod_startup(struct usb_line6 *line6)
{
 struct usb_line6_pod *pod = line6_to_pod(line6);

 switch (pod->startup_progress) {
 case 128:

  line6_version_request_async(line6);
  break;
 case 129:

  line6_read_serial_number(&pod->line6, &pod->serial_number);


  if (snd_card_register(line6->card))
   dev_err(line6->ifcdev, "Failed to register POD card.\n");
  pod->startup_progress = POD_STARTUP_DONE;
  break;
 default:
  break;
 }
}

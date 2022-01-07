
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_podhd {int serial_number; int line6; } ;
struct usb_line6 {int ifcdev; int card; } ;


 int dev_err (int ,char*) ;
 int line6_read_serial_number (int *,int *) ;
 struct usb_line6_podhd* line6_to_podhd (struct usb_line6*) ;
 int podhd_dev_start (struct usb_line6_podhd*) ;
 scalar_t__ snd_card_register (int ) ;

__attribute__((used)) static void podhd_startup(struct usb_line6 *line6)
{
 struct usb_line6_podhd *pod = line6_to_podhd(line6);

 podhd_dev_start(pod);
 line6_read_serial_number(&pod->line6, &pod->serial_number);
 if (snd_card_register(line6->card))
  dev_err(line6->ifcdev, "Failed to register POD HD card.\n");
}

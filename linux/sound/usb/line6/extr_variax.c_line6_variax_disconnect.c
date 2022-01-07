
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_variax {int buffer_activate; } ;
struct usb_line6 {int dummy; } ;


 int kfree (int ) ;
 struct usb_line6_variax* line6_to_variax (struct usb_line6*) ;

__attribute__((used)) static void line6_variax_disconnect(struct usb_line6 *line6)
{
 struct usb_line6_variax *variax = line6_to_variax(line6);

 kfree(variax->buffer_activate);
}

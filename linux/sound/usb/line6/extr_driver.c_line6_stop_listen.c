
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int urb_listen; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void line6_stop_listen(struct usb_line6 *line6)
{
 usb_kill_urb(line6->urb_listen);
}

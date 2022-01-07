
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int variax_activate ;
struct usb_line6_variax {int* buffer_activate; int line6; } ;


 size_t VARIAX_OFFSET_ACTIVATE ;
 int line6_send_raw_message_async (int *,int*,int) ;

__attribute__((used)) static void variax_activate_async(struct usb_line6_variax *variax, int a)
{
 variax->buffer_activate[VARIAX_OFFSET_ACTIVATE] = a;
 line6_send_raw_message_async(&variax->line6, variax->buffer_activate,
         sizeof(variax_activate));
}

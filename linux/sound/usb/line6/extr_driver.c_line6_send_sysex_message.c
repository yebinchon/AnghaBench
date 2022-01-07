
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int dummy; } ;


 int SYSEX_EXTRA_SIZE ;
 int line6_send_raw_message (struct usb_line6*,char const*,int) ;

int line6_send_sysex_message(struct usb_line6 *line6, const char *buffer,
        int size)
{
 return line6_send_raw_message(line6, buffer,
          size + SYSEX_EXTRA_SIZE) -
     SYSEX_EXTRA_SIZE;
}

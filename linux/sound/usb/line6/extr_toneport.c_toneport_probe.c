
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_toneport {int dummy; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {size_t driver_info; } ;


 int line6_probe (struct usb_interface*,struct usb_device_id const*,char*,int *,int ,int) ;
 int toneport_init ;
 int * toneport_properties_table ;

__attribute__((used)) static int toneport_probe(struct usb_interface *interface,
     const struct usb_device_id *id)
{
 return line6_probe(interface, id, "Line6-TonePort",
      &toneport_properties_table[id->driver_info],
      toneport_init, sizeof(struct usb_line6_toneport));
}

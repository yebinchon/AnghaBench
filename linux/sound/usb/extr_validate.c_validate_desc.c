
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_desc_validator {char type; int protocol; int (* func ) (unsigned char*,struct usb_desc_validator const*) ;unsigned char size; } ;


 int UAC_VERSION_ALL ;
 unsigned char USB_DT_CS_INTERFACE ;
 int stub1 (unsigned char*,struct usb_desc_validator const*) ;

__attribute__((used)) static bool validate_desc(unsigned char *hdr, int protocol,
     const struct usb_desc_validator *v)
{
 if (hdr[1] != USB_DT_CS_INTERFACE)
  return 1;

 for (; v->type; v++) {
  if (v->type == hdr[2] &&
      (v->protocol == UAC_VERSION_ALL ||
       v->protocol == protocol)) {
   if (v->func)
    return v->func(hdr, v);

   return hdr[0] >= v->size;
  }
 }

 return 1;
}

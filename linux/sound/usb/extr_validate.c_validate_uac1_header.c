
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_desc_validator {int dummy; } ;
struct uac1_ac_header_descriptor {int bLength; int bInCollection; } ;



__attribute__((used)) static bool validate_uac1_header(const void *p,
     const struct usb_desc_validator *v)
{
 const struct uac1_ac_header_descriptor *d = p;

 return d->bLength >= sizeof(*d) &&
  d->bLength >= sizeof(*d) + d->bInCollection;
}

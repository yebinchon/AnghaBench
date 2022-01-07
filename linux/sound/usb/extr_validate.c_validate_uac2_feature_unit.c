
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_desc_validator {int dummy; } ;
struct uac2_feature_unit_descriptor {int bLength; } ;



__attribute__((used)) static bool validate_uac2_feature_unit(const void *p,
           const struct usb_desc_validator *v)
{
 const struct uac2_feature_unit_descriptor *d = p;

 if (d->bLength < sizeof(*d))
  return 0;

 return d->bLength >= sizeof(*d) + 4 + 1;
}

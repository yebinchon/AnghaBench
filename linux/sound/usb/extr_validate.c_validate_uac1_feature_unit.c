
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_desc_validator {int dummy; } ;
struct uac_feature_unit_descriptor {int bLength; int bControlSize; } ;



__attribute__((used)) static bool validate_uac1_feature_unit(const void *p,
           const struct usb_desc_validator *v)
{
 const struct uac_feature_unit_descriptor *d = p;

 if (d->bLength < sizeof(*d) || !d->bControlSize)
  return 0;

 return d->bLength >= sizeof(*d) + d->bControlSize + 1;
}

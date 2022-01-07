
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_desc_validator {int protocol; } ;
struct uac_mixer_unit_descriptor {int bLength; int bNrInPins; } ;






__attribute__((used)) static bool validate_mixer_unit(const void *p,
    const struct usb_desc_validator *v)
{
 const struct uac_mixer_unit_descriptor *d = p;
 size_t len;

 if (d->bLength < sizeof(*d) || !d->bNrInPins)
  return 0;
 len = sizeof(*d) + d->bNrInPins;




 switch (v->protocol) {
 case 130:
 default:
  len += 2 + 1;

  len += 1;
  break;
 case 129:
  len += 4 + 1;

  len += 1 + 1;
  break;
 case 128:
  len += 2;

  break;
 }
 return d->bLength >= len;
}

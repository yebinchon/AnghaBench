
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_desc_validator {int protocol; int type; } ;
struct uac_processing_unit_descriptor {int bLength; int bNrInPins; int wProcessType; } ;


 int UAC1_EXTENSION_UNIT ;
 int UAC2_EXTENSION_UNIT_V2 ;
 int UAC2_PROCESSING_UNIT_V2 ;


 int UAC3_EXTENSION_UNIT ;
__attribute__((used)) static bool validate_processing_unit(const void *p,
         const struct usb_desc_validator *v)
{
 const struct uac_processing_unit_descriptor *d = p;
 const unsigned char *hdr = p;
 size_t len, m;

 if (d->bLength < sizeof(*d))
  return 0;
 len = sizeof(*d) + d->bNrInPins;
 if (d->bLength < len)
  return 0;
 switch (v->protocol) {
 case 130:
 default:

  len += 1 + 2 + 1 + 1;
  if (d->bLength < len)
   return 0;
  m = hdr[len];
  len += 1 + m + 1;
  break;
 case 129:

  len += 1 + 4 + 1;
  if (v->type == UAC2_PROCESSING_UNIT_V2)
   len += 2;
  else
   len += 1;
  len += 1;
  break;
 case 128:

  len += 2 + 4;
  break;
 }
 if (d->bLength < len)
  return 0;

 switch (v->protocol) {
 case 130:
 default:
  if (v->type == UAC1_EXTENSION_UNIT)
   return 1;
  switch (d->wProcessType) {
  case 131:
  case 132:
   if (d->bLength < len + 1)
    return 0;
   m = hdr[len];
   len += 1 + m * 2;
   break;
  default:
   break;
  }
  break;
 case 129:
  if (v->type == UAC2_EXTENSION_UNIT_V2)
   return 1;
  switch (d->wProcessType) {
  case 135:
  case 136:
   if (d->bLength < len + 1)
    return 0;
   m = hdr[len];
   len += 1 + m * 4;
   break;
  default:
   break;
  }
  break;
 case 128:
  if (v->type == UAC3_EXTENSION_UNIT) {
   len += 2;
   break;
  }
  switch (d->wProcessType) {
  case 133:
   if (d->bLength < len + 1)
    return 0;
   m = hdr[len];
   len += 1 + m * 2;
   break;
  case 134:
   len += 2 + 4;
   break;
  default:
   break;
  }
  break;
 }
 if (d->bLength < len)
  return 0;

 return 1;
}

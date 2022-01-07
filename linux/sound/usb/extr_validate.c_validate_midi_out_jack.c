
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_midi_out_jack_descriptor {int bLength; int bNrInputPins; } ;
struct usb_desc_validator {int dummy; } ;



__attribute__((used)) static bool validate_midi_out_jack(const void *p,
       const struct usb_desc_validator *v)
{
 const struct usb_midi_out_jack_descriptor *d = p;

 return d->bLength >= sizeof(*d) &&
  d->bLength >= sizeof(*d) + d->bNrInputPins * 2;
}

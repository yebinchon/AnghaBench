
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_audio_term {int type; int id; int name; } ;
struct uac_selector_unit_descriptor {int * baSourceID; } ;
struct mixer_build {TYPE_1__* mixer; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 int UAC3_SELECTOR_UNIT ;
 scalar_t__ UAC_VERSION_3 ;
 int __check_input_term (struct mixer_build*,int ,struct usb_audio_term*) ;
 int uac_selector_unit_iSelector (struct uac_selector_unit_descriptor*) ;

__attribute__((used)) static int parse_term_selector_unit(struct mixer_build *state,
        struct usb_audio_term *term,
        void *p1, int id)
{
 struct uac_selector_unit_descriptor *d = p1;
 int err;


 err = __check_input_term(state, d->baSourceID[0], term);
 if (err < 0)
  return err;
 term->type = UAC3_SELECTOR_UNIT << 16;
 term->id = id;
 if (state->mixer->protocol != UAC_VERSION_3)
  term->name = uac_selector_unit_iSelector(d);
 return 0;
}

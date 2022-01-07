
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_audio_term {int type; int id; int name; } ;
struct uac_clock_source_descriptor {int iClockSource; } ;
struct mixer_build {int dummy; } ;


 int UAC3_CLOCK_SOURCE ;

__attribute__((used)) static int parse_term_uac2_clock_source(struct mixer_build *state,
     struct usb_audio_term *term,
     void *p1, int id)
{
 struct uac_clock_source_descriptor *d = p1;

 term->type = UAC3_CLOCK_SOURCE << 16;
 term->id = id;
 term->name = d->iClockSource;
 return 0;
}

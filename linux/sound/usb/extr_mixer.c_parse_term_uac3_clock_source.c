
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_audio_term {int type; int id; int name; } ;
struct uac3_clock_source_descriptor {int wClockSourceStr; } ;
struct mixer_build {int dummy; } ;


 int UAC3_CLOCK_SOURCE ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int parse_term_uac3_clock_source(struct mixer_build *state,
     struct usb_audio_term *term,
     void *p1, int id)
{
 struct uac3_clock_source_descriptor *d = p1;

 term->type = UAC3_CLOCK_SOURCE << 16;
 term->id = id;
 term->name = le16_to_cpu(d->wClockSourceStr);
 return 0;
}

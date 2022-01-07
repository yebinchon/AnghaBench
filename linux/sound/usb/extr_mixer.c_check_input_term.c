
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_audio_term {int dummy; } ;
struct mixer_build {struct usb_audio_term* termbitmap; } ;


 int __check_input_term (struct mixer_build*,int,struct usb_audio_term*) ;
 int memset (struct usb_audio_term*,int ,int) ;

__attribute__((used)) static int check_input_term(struct mixer_build *state, int id,
       struct usb_audio_term *term)
{
 memset(term, 0, sizeof(*term));
 memset(state->termbitmap, 0, sizeof(state->termbitmap));
 return __check_input_term(state, id, term);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_audio_term {int id; int name; int chconfig; int channels; int type; } ;
struct uac2_input_terminal_descriptor {int iTerminal; int bmChannelConfig; int bNrChannels; int wTerminalType; int bCSourceID; } ;
struct mixer_build {int dummy; } ;


 int __check_input_term (struct mixer_build*,int ,struct usb_audio_term*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int parse_term_uac2_iterm_unit(struct mixer_build *state,
          struct usb_audio_term *term,
          void *p1, int id)
{
 struct uac2_input_terminal_descriptor *d = p1;
 int err;


 err = __check_input_term(state, d->bCSourceID, term);
 if (err < 0)
  return err;




 term->id = id;
 term->type = le16_to_cpu(d->wTerminalType);
 term->channels = d->bNrChannels;
 term->chconfig = le32_to_cpu(d->bmChannelConfig);
 term->name = d->iTerminal;
 return 0;
}

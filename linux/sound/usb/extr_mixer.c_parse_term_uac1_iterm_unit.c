
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_audio_term {int name; void* chconfig; int channels; void* type; } ;
struct uac_input_terminal_descriptor {int iTerminal; int wChannelConfig; int bNrChannels; int wTerminalType; } ;
struct mixer_build {int dummy; } ;


 void* le16_to_cpu (int ) ;

__attribute__((used)) static int parse_term_uac1_iterm_unit(struct mixer_build *state,
          struct usb_audio_term *term,
          void *p1, int id)
{
 struct uac_input_terminal_descriptor *d = p1;

 term->type = le16_to_cpu(d->wTerminalType);
 term->channels = d->bNrChannels;
 term->chconfig = le16_to_cpu(d->wChannelConfig);
 term->name = d->iTerminal;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_audio_term {int id; int channels; void* name; scalar_t__ chconfig; void* type; } ;
struct uac3_input_terminal_descriptor {int wTerminalDescrStr; int wClusterDescrID; int wTerminalType; int bCSourceID; } ;
struct mixer_build {int dummy; } ;


 int __check_input_term (struct mixer_build*,int ,struct usb_audio_term*) ;
 int get_cluster_channels_v3 (struct mixer_build*,void*) ;
 void* le16_to_cpu (int ) ;

__attribute__((used)) static int parse_term_uac3_iterm_unit(struct mixer_build *state,
          struct usb_audio_term *term,
          void *p1, int id)
{
 struct uac3_input_terminal_descriptor *d = p1;
 int err;


 err = __check_input_term(state, d->bCSourceID, term);
 if (err < 0)
  return err;




 term->id = id;
 term->type = le16_to_cpu(d->wTerminalType);

 err = get_cluster_channels_v3(state, le16_to_cpu(d->wClusterDescrID));
 if (err < 0)
  return err;
 term->channels = err;


 term->chconfig = 0;

 term->name = le16_to_cpu(d->wTerminalDescrStr);
 return 0;
}

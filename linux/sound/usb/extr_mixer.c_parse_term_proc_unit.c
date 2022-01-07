
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_audio_term {int type; int id; int name; int chconfig; int channels; } ;
struct uac_processing_unit_descriptor {int * baSourceID; scalar_t__ bNrInPins; } ;
struct mixer_build {TYPE_1__* mixer; } ;
struct TYPE_2__ {int protocol; } ;


 int UAC_VERSION_3 ;
 int __check_input_term (struct mixer_build*,int ,struct usb_audio_term*) ;
 int uac_processing_unit_bNrChannels (struct uac_processing_unit_descriptor*) ;
 int uac_processing_unit_iProcessing (struct uac_processing_unit_descriptor*,int) ;
 int uac_processing_unit_wChannelConfig (struct uac_processing_unit_descriptor*,int) ;

__attribute__((used)) static int parse_term_proc_unit(struct mixer_build *state,
    struct usb_audio_term *term,
    void *p1, int id, int vtype)
{
 struct uac_processing_unit_descriptor *d = p1;
 int protocol = state->mixer->protocol;
 int err;

 if (d->bNrInPins) {

  err = __check_input_term(state, d->baSourceID[0], term);
  if (err < 0)
   return err;
 }

 term->type = vtype << 16;
 term->id = id;

 if (protocol == UAC_VERSION_3)
  return 0;

 if (!term->channels) {
  term->channels = uac_processing_unit_bNrChannels(d);
  term->chconfig = uac_processing_unit_wChannelConfig(d, protocol);
 }
 term->name = uac_processing_unit_iProcessing(d, protocol);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {scalar_t__ protocol; int chip; } ;
struct usb_mixer_elem_info {int channels; int max; int head; scalar_t__ min; int val_type; int control; } ;
struct usb_audio_term {int id; } ;
struct TYPE_2__ {int name; } ;
struct snd_kcontrol {int private_free; TYPE_1__ id; } ;


 int GFP_KERNEL ;
 int UAC2_TE_CONNECTOR ;
 int UAC3_TE_INSERTION ;
 scalar_t__ UAC_VERSION_2 ;
 int USB_MIXER_BOOLEAN ;
 int get_connector_control_name (struct usb_mixer_interface*,struct usb_audio_term*,int,int ,int) ;
 struct usb_mixer_elem_info* kzalloc (int,int ) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct usb_mixer_elem_info*) ;
 int snd_usb_mixer_add_control (int *,struct snd_kcontrol*) ;
 int snd_usb_mixer_elem_free ;
 int snd_usb_mixer_elem_init_std (int *,struct usb_mixer_interface*,int ) ;
 int usb_audio_err (int ,char*) ;
 int usb_connector_ctl_ro ;
 int usb_mixer_elem_info_free (struct usb_mixer_elem_info*) ;

__attribute__((used)) static void build_connector_control(struct usb_mixer_interface *mixer,
        struct usb_audio_term *term, bool is_input)
{
 struct snd_kcontrol *kctl;
 struct usb_mixer_elem_info *cval;

 cval = kzalloc(sizeof(*cval), GFP_KERNEL);
 if (!cval)
  return;
 snd_usb_mixer_elem_init_std(&cval->head, mixer, term->id);
 if (mixer->protocol == UAC_VERSION_2)
  cval->control = UAC2_TE_CONNECTOR;
 else
  cval->control = UAC3_TE_INSERTION;

 cval->val_type = USB_MIXER_BOOLEAN;
 cval->channels = 1;
 cval->min = 0;
 cval->max = 1;
 kctl = snd_ctl_new1(&usb_connector_ctl_ro, cval);
 if (!kctl) {
  usb_audio_err(mixer->chip, "cannot malloc kcontrol\n");
  usb_mixer_elem_info_free(cval);
  return;
 }
 get_connector_control_name(mixer, term, is_input, kctl->id.name,
       sizeof(kctl->id.name));
 kctl->private_free = snd_usb_mixer_elem_free;
 snd_usb_mixer_add_control(&cval->head, kctl);
}

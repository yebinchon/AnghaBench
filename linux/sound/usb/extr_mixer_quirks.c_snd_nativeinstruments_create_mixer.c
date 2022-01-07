
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
struct usb_mixer_elem_list {int kctl; } ;
struct snd_kcontrol_new {int private_value; int name; int info; int put; int get; int access; int iface; } ;


 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int add_single_ctl_with_resume (struct usb_mixer_interface*,int ,int ,struct snd_kcontrol_new*,struct usb_mixer_elem_list**) ;
 int snd_ctl_boolean_mono_info ;
 int snd_nativeinstruments_control_get ;
 int snd_nativeinstruments_control_put ;
 int snd_ni_control_init_val (struct usb_mixer_interface*,int ) ;
 int snd_ni_update_cur_val ;

__attribute__((used)) static int snd_nativeinstruments_create_mixer(struct usb_mixer_interface *mixer,
           const struct snd_kcontrol_new *kc,
           unsigned int count)
{
 int i, err = 0;
 struct snd_kcontrol_new template = {
  .iface = SNDRV_CTL_ELEM_IFACE_MIXER,
  .access = SNDRV_CTL_ELEM_ACCESS_READWRITE,
  .get = snd_nativeinstruments_control_get,
  .put = snd_nativeinstruments_control_put,
  .info = snd_ctl_boolean_mono_info,
 };

 for (i = 0; i < count; i++) {
  struct usb_mixer_elem_list *list;

  template.name = kc[i].name;
  template.private_value = kc[i].private_value;

  err = add_single_ctl_with_resume(mixer, 0,
       snd_ni_update_cur_val,
       &template, &list);
  if (err < 0)
   break;
  snd_ni_control_init_val(mixer, list->kctl);
 }

 return err;
}

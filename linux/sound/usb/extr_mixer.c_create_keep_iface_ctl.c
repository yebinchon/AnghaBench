
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {TYPE_1__* chip; } ;
struct snd_kcontrol {int id; } ;
struct TYPE_2__ {int card; } ;


 int keep_iface_ctl ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 scalar_t__ snd_ctl_find_id (int ,int *) ;
 int snd_ctl_free_one (struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct usb_mixer_interface*) ;

__attribute__((used)) static int create_keep_iface_ctl(struct usb_mixer_interface *mixer)
{
 struct snd_kcontrol *kctl = snd_ctl_new1(&keep_iface_ctl, mixer);


 if (snd_ctl_find_id(mixer->chip->card, &kctl->id)) {
  snd_ctl_free_one(kctl);
  return 0;
 }

 return snd_ctl_add(mixer->chip->card, kctl);
}

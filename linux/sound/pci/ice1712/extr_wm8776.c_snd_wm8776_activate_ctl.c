
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wm8776 {struct snd_card* card; } ;
struct snd_kcontrol_volatile {int access; } ;
struct snd_kcontrol {int id; struct snd_kcontrol_volatile* vd; } ;
struct snd_ctl_elem_id {int iface; int name; } ;
struct snd_card {int dummy; } ;
typedef int elem_id ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 struct snd_kcontrol* snd_ctl_find_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 unsigned int snd_ctl_get_ioff (struct snd_kcontrol*,int *) ;
 int snd_ctl_notify (struct snd_card*,int ,int *) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void snd_wm8776_activate_ctl(struct snd_wm8776 *wm,
        const char *ctl_name,
        bool active)
{
 struct snd_card *card = wm->card;
 struct snd_kcontrol *kctl;
 struct snd_kcontrol_volatile *vd;
 struct snd_ctl_elem_id elem_id;
 unsigned int index_offset;

 memset(&elem_id, 0, sizeof(elem_id));
 strlcpy(elem_id.name, ctl_name, sizeof(elem_id.name));
 elem_id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 kctl = snd_ctl_find_id(card, &elem_id);
 if (!kctl)
  return;
 index_offset = snd_ctl_get_ioff(kctl, &kctl->id);
 vd = &kctl->vd[index_offset];
 if (active)
  vd->access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 else
  vd->access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(card, SNDRV_CTL_EVENT_MASK_INFO, &kctl->id);
}

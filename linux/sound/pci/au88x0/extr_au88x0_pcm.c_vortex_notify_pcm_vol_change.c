
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int id; TYPE_1__* vd; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (struct snd_card*,int,int *) ;

__attribute__((used)) static void vortex_notify_pcm_vol_change(struct snd_card *card,
   struct snd_kcontrol *kctl, int activate)
{
 if (activate)
  kctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 else
  kctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(card, SNDRV_CTL_EVENT_MASK_VALUE |
    SNDRV_CTL_EVENT_MASK_INFO, &(kctl->id));
}

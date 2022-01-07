
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;


 int CTL_ADD_EXCLUSIVE ;
 int snd_ctl_add_replace (struct snd_card*,struct snd_kcontrol*,int ) ;

int snd_ctl_add(struct snd_card *card, struct snd_kcontrol *kcontrol)
{
 return snd_ctl_add_replace(card, kcontrol, CTL_ADD_EXCLUSIVE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;


 int CTL_ADD_ON_REPLACE ;
 int CTL_REPLACE ;
 int snd_ctl_add_replace (struct snd_card*,struct snd_kcontrol*,int ) ;

int snd_ctl_replace(struct snd_card *card, struct snd_kcontrol *kcontrol,
      bool add_on_replace)
{
 return snd_ctl_add_replace(card, kcontrol,
       add_on_replace ? CTL_ADD_ON_REPLACE : CTL_REPLACE);
}

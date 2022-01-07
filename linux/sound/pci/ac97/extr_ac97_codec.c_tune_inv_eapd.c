
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ac97 {int dummy; } ;


 int ENOENT ;
 struct snd_kcontrol* ctl_find (struct snd_ac97*,char*,int *) ;
 int set_inv_eapd (struct snd_ac97*,struct snd_kcontrol*) ;

__attribute__((used)) static int tune_inv_eapd(struct snd_ac97 *ac97)
{
 struct snd_kcontrol *kctl = ctl_find(ac97, "External Amplifier", ((void*)0));
 if (! kctl)
  return -ENOENT;
 set_inv_eapd(ac97, kctl);
 return 0;
}

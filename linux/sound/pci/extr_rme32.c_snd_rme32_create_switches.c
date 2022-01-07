
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct rme32 {struct snd_kcontrol* spdif_ctl; } ;


 scalar_t__ ARRAY_SIZE (int *) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct rme32*) ;
 int * snd_rme32_controls ;

__attribute__((used)) static int snd_rme32_create_switches(struct snd_card *card, struct rme32 * rme32)
{
 int idx, err;
 struct snd_kcontrol *kctl;

 for (idx = 0; idx < (int)ARRAY_SIZE(snd_rme32_controls); idx++) {
  if ((err = snd_ctl_add(card, kctl = snd_ctl_new1(&snd_rme32_controls[idx], rme32))) < 0)
   return err;
  if (idx == 1)
   rme32->spdif_ctl = kctl;
 }

 return 0;
}

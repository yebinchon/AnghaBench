
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_str {int * chmap_kctl; TYPE_1__* pcm; } ;
struct TYPE_2__ {int card; } ;


 int snd_ctl_remove (int ,int *) ;

__attribute__((used)) static void free_chmap(struct snd_pcm_str *pstr)
{
 if (pstr->chmap_kctl) {
  snd_ctl_remove(pstr->pcm->card, pstr->chmap_kctl);
  pstr->chmap_kctl = ((void*)0);
 }
}

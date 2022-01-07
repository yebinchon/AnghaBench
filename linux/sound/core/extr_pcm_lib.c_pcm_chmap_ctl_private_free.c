
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_chmap {size_t stream; TYPE_2__* pcm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {TYPE_1__* streams; } ;
struct TYPE_3__ {int * chmap_kctl; } ;


 int kfree (struct snd_pcm_chmap*) ;
 struct snd_pcm_chmap* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static void pcm_chmap_ctl_private_free(struct snd_kcontrol *kcontrol)
{
 struct snd_pcm_chmap *info = snd_kcontrol_chip(kcontrol);
 info->pcm->streams[info->stream].chmap_kctl = ((void*)0);
 kfree(info);
}

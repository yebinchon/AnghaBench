
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {struct ct_atc_pcm* private_data; } ;
struct ct_atc_pcm {int timer; int substream; } ;
struct ct_atc {int (* pcm_release_resources ) (struct ct_atc*,struct ct_atc_pcm*) ;} ;


 int ct_timer_instance_free (int ) ;
 int kfree (struct ct_atc_pcm*) ;
 struct ct_atc* snd_pcm_substream_chip (int ) ;
 int stub1 (struct ct_atc*,struct ct_atc_pcm*) ;

__attribute__((used)) static void ct_atc_pcm_free_substream(struct snd_pcm_runtime *runtime)
{
 struct ct_atc_pcm *apcm = runtime->private_data;
 struct ct_atc *atc = snd_pcm_substream_chip(apcm->substream);

 atc->pcm_release_resources(atc, apcm);
 ct_timer_instance_free(apcm->timer);
 kfree(apcm);
 runtime->private_data = ((void*)0);
}

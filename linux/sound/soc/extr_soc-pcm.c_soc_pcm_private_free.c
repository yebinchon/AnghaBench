
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int delayed_work; } ;
struct snd_pcm {struct snd_soc_pcm_runtime* private_data; } ;


 int flush_delayed_work (int *) ;
 int snd_soc_pcm_component_free (struct snd_pcm*) ;

__attribute__((used)) static void soc_pcm_private_free(struct snd_pcm *pcm)
{
 struct snd_soc_pcm_runtime *rtd = pcm->private_data;


 flush_delayed_work(&rtd->delayed_work);
 snd_soc_pcm_component_free(pcm);
}

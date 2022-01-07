
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int SND_SOC_TPLG_INDEX_ALL ;
 int snd_soc_tplg_component_remove (struct snd_soc_component*,int ) ;

__attribute__((used)) static void sof_pcm_remove(struct snd_soc_component *component)
{

 snd_soc_tplg_component_remove(component, SND_SOC_TPLG_INDEX_ALL);
}

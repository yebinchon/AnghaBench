
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_ipc_dai_config {int dummy; } ;
struct snd_soc_tplg_link_config {int dummy; } ;
struct snd_soc_tplg_hw_config {int dummy; } ;
struct snd_soc_dai_link {int dummy; } ;
struct snd_soc_component {int dummy; } ;



__attribute__((used)) static int sof_link_esai_load(struct snd_soc_component *scomp, int index,
         struct snd_soc_dai_link *link,
         struct snd_soc_tplg_link_config *cfg,
         struct snd_soc_tplg_hw_config *hw_config,
         struct sof_ipc_dai_config *config)
{

 return 0;
}

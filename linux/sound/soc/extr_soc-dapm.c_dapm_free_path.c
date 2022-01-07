
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_path {int list; int list_kcontrol; int * list_node; } ;


 size_t SND_SOC_DAPM_DIR_IN ;
 size_t SND_SOC_DAPM_DIR_OUT ;
 int kfree (struct snd_soc_dapm_path*) ;
 int list_del (int *) ;

__attribute__((used)) static void dapm_free_path(struct snd_soc_dapm_path *path)
{
 list_del(&path->list_node[SND_SOC_DAPM_DIR_IN]);
 list_del(&path->list_node[SND_SOC_DAPM_DIR_OUT]);
 list_del(&path->list_kcontrol);
 list_del(&path->list);
 kfree(path);
}

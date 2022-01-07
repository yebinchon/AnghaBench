
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int list; } ;


 int dapm_debugfs_cleanup (struct snd_soc_dapm_context*) ;
 int dapm_free_widgets (struct snd_soc_dapm_context*) ;
 int list_del (int *) ;

void snd_soc_dapm_free(struct snd_soc_dapm_context *dapm)
{
 dapm_debugfs_cleanup(dapm);
 dapm_free_widgets(dapm);
 list_del(&dapm->list);
}

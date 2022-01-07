
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;


 int SND_SOC_DAPM_DIR_OUT ;
 int dapm_widget_invalidate_paths (struct snd_soc_dapm_widget*,int ) ;

__attribute__((used)) static void dapm_widget_invalidate_output_paths(struct snd_soc_dapm_widget *w)
{
 dapm_widget_invalidate_paths(w, SND_SOC_DAPM_DIR_OUT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct skl_dev {int dummy; } ;






 struct skl_dev* get_skl_ctx (int ) ;
 int skl_tplg_mixer_dapm_post_pmd_event (struct snd_soc_dapm_widget*,struct skl_dev*) ;
 int skl_tplg_mixer_dapm_post_pmu_event (struct snd_soc_dapm_widget*,struct skl_dev*) ;
 int skl_tplg_mixer_dapm_pre_pmd_event (struct snd_soc_dapm_widget*,struct skl_dev*) ;
 int skl_tplg_mixer_dapm_pre_pmu_event (struct snd_soc_dapm_widget*,struct skl_dev*) ;

__attribute__((used)) static int skl_tplg_mixer_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct skl_dev *skl = get_skl_ctx(dapm->dev);

 switch (event) {
 case 128:
  return skl_tplg_mixer_dapm_pre_pmu_event(w, skl);

 case 130:
  return skl_tplg_mixer_dapm_post_pmu_event(w, skl);

 case 129:
  return skl_tplg_mixer_dapm_pre_pmd_event(w, skl);

 case 131:
  return skl_tplg_mixer_dapm_post_pmd_event(w, skl);
 }

 return 0;
}

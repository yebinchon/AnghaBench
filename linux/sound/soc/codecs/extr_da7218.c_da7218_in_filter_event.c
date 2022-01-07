
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct da7218_priv {int in_filt_en; int mic_lvl_det_en; } ;






 int DA7218_LVL_DET_CTRL ;
 int DA7218_LVL_DET_EN_CHAN1L_SHIFT ;
 int DA7218_LVL_DET_EN_CHAN1R_SHIFT ;
 int DA7218_LVL_DET_EN_CHAN2L_SHIFT ;
 int DA7218_LVL_DET_EN_CHAN2R_SHIFT ;
 int DA7218_MIC_LVL_DET_DELAY ;
 int EINVAL ;


 int msleep (int ) ;
 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int da7218_in_filter_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);
 u8 mask;

 switch (w->reg) {
 case 133:
  mask = (1 << DA7218_LVL_DET_EN_CHAN1L_SHIFT);
  break;
 case 132:
  mask = (1 << DA7218_LVL_DET_EN_CHAN1R_SHIFT);
  break;
 case 131:
  mask = (1 << DA7218_LVL_DET_EN_CHAN2L_SHIFT);
  break;
 case 130:
  mask = (1 << DA7218_LVL_DET_EN_CHAN2R_SHIFT);
  break;
 default:
  return -EINVAL;
 }

 switch (event) {
 case 129:
  da7218->in_filt_en |= mask;





  if (mask & da7218->mic_lvl_det_en)
   msleep(DA7218_MIC_LVL_DET_DELAY);
  break;
 case 128:
  da7218->in_filt_en &= ~mask;
  break;
 default:
  return -EINVAL;
 }


 snd_soc_component_write(component, DA7218_LVL_DET_CTRL,
        (da7218->in_filt_en & da7218->mic_lvl_det_en));

 return 0;
}

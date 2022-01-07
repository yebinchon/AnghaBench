
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct max98088_priv {int mic2pre; int mic1pre; } ;


 int EINVAL ;
 int M98088_MICPRE_MASK ;
 int M98088_MICPRE_SHIFT ;
 int M98088_REG_35_LVL_MIC1 ;


 struct max98088_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int max98088_mic_event(struct snd_soc_dapm_widget *w,
                            struct snd_kcontrol *kcontrol, int event)
{
       struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
       struct max98088_priv *max98088 = snd_soc_component_get_drvdata(component);

       switch (event) {
       case 128:
               if (w->reg == M98088_REG_35_LVL_MIC1) {
                       snd_soc_component_update_bits(component, w->reg, M98088_MICPRE_MASK,
                               (1+max98088->mic1pre)<<M98088_MICPRE_SHIFT);
               } else {
                       snd_soc_component_update_bits(component, w->reg, M98088_MICPRE_MASK,
                               (1+max98088->mic2pre)<<M98088_MICPRE_SHIFT);
               }
               break;
       case 129:
               snd_soc_component_update_bits(component, w->reg, M98088_MICPRE_MASK, 0);
               break;
       default:
               return -EINVAL;
       }

       return 0;
}

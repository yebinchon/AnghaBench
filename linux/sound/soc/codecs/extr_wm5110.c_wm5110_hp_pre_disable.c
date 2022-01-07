
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct arizona_priv {int out_down_delay; } ;


 unsigned int ARIZONA_DRE1L_ENA_MASK ;
 unsigned int ARIZONA_DRE1R_ENA_MASK ;
 int ARIZONA_DRE_ENABLE ;


 int ARIZONA_SPARE_TRIGGERS ;
 int ARIZONA_WS_TRG1 ;
 int ARIZONA_WS_TRG2 ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm5110_hp_pre_disable(struct snd_soc_dapm_widget *w)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 unsigned int val = snd_soc_component_read32(component, ARIZONA_DRE_ENABLE);

 switch (w->shift) {
 case 129:
  if (!(val & ARIZONA_DRE1L_ENA_MASK)) {
   snd_soc_component_update_bits(component,
            ARIZONA_SPARE_TRIGGERS,
            ARIZONA_WS_TRG1,
            ARIZONA_WS_TRG1);
   snd_soc_component_update_bits(component,
            ARIZONA_SPARE_TRIGGERS,
            ARIZONA_WS_TRG1, 0);
   priv->out_down_delay += 27;
  }
  break;
 case 128:
  if (!(val & ARIZONA_DRE1R_ENA_MASK)) {
   snd_soc_component_update_bits(component,
            ARIZONA_SPARE_TRIGGERS,
            ARIZONA_WS_TRG2,
            ARIZONA_WS_TRG2);
   snd_soc_component_update_bits(component,
            ARIZONA_SPARE_TRIGGERS,
            ARIZONA_WS_TRG2, 0);
   priv->out_down_delay += 27;
  }
  break;
 default:
  break;
 }

 return 0;
}

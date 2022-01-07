
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int DA7219_HP_L_AMP_MIN_GAIN_EN_MASK ;
 int DA7219_HP_L_CTRL ;
 int DA7219_HP_R_AMP_MIN_GAIN_EN_MASK ;
 int DA7219_HP_R_CTRL ;
 int DA7219_MIN_GAIN_DELAY ;


 int EINVAL ;


 int msleep (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int da7219_mixout_event(struct snd_soc_dapm_widget *w,
          struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 u8 hp_ctrl, min_gain_mask;

 switch (w->reg) {
 case 131:
  hp_ctrl = DA7219_HP_L_CTRL;
  min_gain_mask = DA7219_HP_L_AMP_MIN_GAIN_EN_MASK;
  break;
 case 130:
  hp_ctrl = DA7219_HP_R_CTRL;
  min_gain_mask = DA7219_HP_R_AMP_MIN_GAIN_EN_MASK;
  break;
 default:
  return -EINVAL;
 }

 switch (event) {
 case 128:

  snd_soc_component_update_bits(component, hp_ctrl, min_gain_mask,
        min_gain_mask);

  msleep(DA7219_MIN_GAIN_DELAY);

  break;
 case 129:

  snd_soc_component_update_bits(component, hp_ctrl, min_gain_mask, 0);

  break;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_widget {int shift; int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct max98095_priv {int lin_state; } ;


 int EINVAL ;


 scalar_t__ WARN_ON (int) ;
 struct max98095_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int max98095_line_pga(struct snd_soc_dapm_widget *w,
        int event, u8 channel)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct max98095_priv *max98095 = snd_soc_component_get_drvdata(component);
 u8 *state;

 if (WARN_ON(!(channel == 1 || channel == 2)))
  return -EINVAL;

 state = &max98095->lin_state;

 switch (event) {
 case 128:
  *state |= channel;
  snd_soc_component_update_bits(component, w->reg,
   (1 << w->shift), (1 << w->shift));
  break;
 case 129:
  *state &= ~channel;
  if (*state == 0) {
   snd_soc_component_update_bits(component, w->reg,
    (1 << w->shift), 0);
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}

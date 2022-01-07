
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs43130_private {int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;


 int dev_err (int ,char*,int) ;
 int hpin_postpmu_seq ;
 int hpin_prepmd_seq ;
 int regmap_multi_reg_write (int ,int ,int ) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int cs43130_hpin_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:
  regmap_multi_reg_write(cs43130->regmap, hpin_prepmd_seq,
           ARRAY_SIZE(hpin_prepmd_seq));
  break;
 case 128:
  regmap_multi_reg_write(cs43130->regmap, hpin_postpmu_seq,
           ARRAY_SIZE(hpin_postpmu_seq));
  break;
 default:
  dev_err(component->dev, "Invalid HPIN event = 0x%x\n", event);
  return -EINVAL;
 }
 return 0;
}

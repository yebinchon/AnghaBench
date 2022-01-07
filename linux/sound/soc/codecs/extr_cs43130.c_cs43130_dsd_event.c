
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs43130_private {int regmap; int dev_id; } ;


 int ARRAY_SIZE (int ) ;

 int CS43130_DSD_PATH_CTL_1 ;
 int CS43130_MUTE_EN ;
 int CS43130_MUTE_MASK ;



 int EINVAL ;



 int dev_err (int ,char*,int) ;
 int dsd_seq ;
 int msleep (int) ;
 int mute_seq ;
 int regmap_multi_reg_write (int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int unmute_seq ;

__attribute__((used)) static int cs43130_dsd_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  switch (cs43130->dev_id) {
  case 134:
  case 131:
   regmap_multi_reg_write(cs43130->regmap, dsd_seq,
            ARRAY_SIZE(dsd_seq));
   break;
  }
  break;
 case 130:
  regmap_update_bits(cs43130->regmap, CS43130_DSD_PATH_CTL_1,
       CS43130_MUTE_MASK, 0);
  switch (cs43130->dev_id) {
  case 134:
  case 131:
   regmap_multi_reg_write(cs43130->regmap, unmute_seq,
            ARRAY_SIZE(unmute_seq));
   break;
  }
  break;
 case 129:
  switch (cs43130->dev_id) {
  case 134:
  case 131:
   regmap_multi_reg_write(cs43130->regmap, mute_seq,
            ARRAY_SIZE(mute_seq));
   regmap_update_bits(cs43130->regmap,
        CS43130_DSD_PATH_CTL_1,
        CS43130_MUTE_MASK, CS43130_MUTE_EN);




   msleep(130);
   break;
  case 133:
  case 132:
   regmap_update_bits(cs43130->regmap,
        CS43130_DSD_PATH_CTL_1,
        CS43130_MUTE_MASK, CS43130_MUTE_EN);
   break;
  }
  break;
 default:
  dev_err(component->dev, "Invalid event = 0x%x\n", event);
  return -EINVAL;
 }
 return 0;
}

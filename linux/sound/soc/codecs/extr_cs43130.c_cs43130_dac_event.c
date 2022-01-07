
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs43130_private {int regmap; int dev_id; } ;


 int ARRAY_SIZE (int ) ;

 int CS43130_DXD1 ;
 int CS43130_DXD12 ;
 int CS43130_DXD13 ;



 int EINVAL ;



 int dac_postpmd_seq ;
 int dac_postpmu_seq ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int pop_free_seq ;
 int pop_free_seq2 ;
 int regmap_multi_reg_write (int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs43130_dac_event(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  switch (cs43130->dev_id) {
  case 134:
  case 131:
   regmap_multi_reg_write(cs43130->regmap, pop_free_seq,
            ARRAY_SIZE(pop_free_seq));
   break;
  case 133:
  case 132:
   regmap_multi_reg_write(cs43130->regmap, pop_free_seq2,
            ARRAY_SIZE(pop_free_seq2));
   break;
  }
  break;
 case 129:
  usleep_range(10000, 10050);

  regmap_write(cs43130->regmap, CS43130_DXD1, 0x99);

  switch (cs43130->dev_id) {
  case 134:
  case 131:
   regmap_multi_reg_write(cs43130->regmap, dac_postpmu_seq,
            ARRAY_SIZE(dac_postpmu_seq));





   msleep(1000);
   regmap_write(cs43130->regmap, CS43130_DXD12, 0);
   break;
  case 133:
  case 132:
   usleep_range(12000, 12010);
   regmap_write(cs43130->regmap, CS43130_DXD13, 0);
   break;
  }

  regmap_write(cs43130->regmap, CS43130_DXD1, 0);
  break;
 case 130:
  switch (cs43130->dev_id) {
  case 134:
  case 131:
   regmap_multi_reg_write(cs43130->regmap, dac_postpmd_seq,
            ARRAY_SIZE(dac_postpmd_seq));
   break;
  }
  break;
 default:
  dev_err(component->dev, "Invalid DAC event = 0x%x\n", event);
  return -EINVAL;
 }
 return 0;
}

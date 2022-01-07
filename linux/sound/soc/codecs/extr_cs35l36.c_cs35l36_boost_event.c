
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int extern_boost; } ;
struct cs35l36_private {int regmap; TYPE_1__ pdata; } ;


 int CS35L36_BST_DIS_VP ;
 int CS35L36_BST_EN ;
 int CS35L36_BST_EN_MASK ;
 int CS35L36_BST_EN_SHIFT ;
 int CS35L36_PWR_CTRL2 ;
 int EINVAL ;


 int dev_dbg (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct cs35l36_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int cs35l36_boost_event(struct snd_soc_dapm_widget *w,
          struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
   snd_soc_dapm_to_component(w->dapm);
 struct cs35l36_private *cs35l36 =
   snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (!cs35l36->pdata.extern_boost)
   regmap_update_bits(cs35l36->regmap, CS35L36_PWR_CTRL2,
        CS35L36_BST_EN_MASK,
        CS35L36_BST_EN <<
        CS35L36_BST_EN_SHIFT);
  break;
 case 129:
  if (!cs35l36->pdata.extern_boost)
   regmap_update_bits(cs35l36->regmap, CS35L36_PWR_CTRL2,
        CS35L36_BST_EN_MASK,
        CS35L36_BST_DIS_VP <<
        CS35L36_BST_EN_SHIFT);
  break;
 default:
  dev_dbg(component->dev, "Invalid event = 0x%x\n", event);
  return -EINVAL;
 }

 return 0;
}

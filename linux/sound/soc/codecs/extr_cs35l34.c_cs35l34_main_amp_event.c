
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int boost_vtge; } ;
struct cs35l34_private {int regmap; TYPE_1__ pdata; } ;


 int CS35L34_BST_CVTL_MASK ;
 int CS35L34_BST_CVTR_V_CTL ;
 int CS35L34_MUTE ;
 int CS35L34_PROTECT_CTL ;


 int pr_err (char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct cs35l34_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs35l34_main_amp_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs35l34_private *priv = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  regmap_update_bits(priv->regmap, CS35L34_BST_CVTR_V_CTL,
    CS35L34_BST_CVTL_MASK, priv->pdata.boost_vtge);
  usleep_range(5000, 5100);
  regmap_update_bits(priv->regmap, CS35L34_PROTECT_CTL,
      CS35L34_MUTE, 0);
  break;
 case 129:
  regmap_update_bits(priv->regmap, CS35L34_BST_CVTR_V_CTL,
   CS35L34_BST_CVTL_MASK, 0);
  regmap_update_bits(priv->regmap, CS35L34_PROTECT_CTL,
   CS35L34_MUTE, CS35L34_MUTE);
  usleep_range(5000, 5100);
  break;
 default:
  pr_err("Invalid event = 0x%x\n", event);
 }
 return 0;
}

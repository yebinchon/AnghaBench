
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs35l34_private {int regmap; int tdm_mode; } ;


 int CS35L34_PDN_ALL ;
 int CS35L34_PDN_TDM ;
 int CS35L34_PWRCTL1 ;
 int CS35L34_PWRCTL3 ;


 int dev_err (int ,char*,int) ;
 int pr_err (char*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct cs35l34_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs35l34_sdin_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs35l34_private *priv = snd_soc_component_get_drvdata(component);
 int ret;

 switch (event) {
 case 128:
  if (priv->tdm_mode)
   regmap_update_bits(priv->regmap, CS35L34_PWRCTL3,
      CS35L34_PDN_TDM, 0x00);

  ret = regmap_update_bits(priv->regmap, CS35L34_PWRCTL1,
      CS35L34_PDN_ALL, 0);
  if (ret < 0) {
   dev_err(component->dev, "Cannot set Power bits %d\n", ret);
   return ret;
  }
  usleep_range(5000, 5100);
 break;
 case 129:
  if (priv->tdm_mode) {
   regmap_update_bits(priv->regmap, CS35L34_PWRCTL3,
     CS35L34_PDN_TDM, CS35L34_PDN_TDM);
  }
  ret = regmap_update_bits(priv->regmap, CS35L34_PWRCTL1,
     CS35L34_PDN_ALL, CS35L34_PDN_ALL);
 break;
 default:
  pr_err("Invalid event = 0x%x\n", event);
 }
 return 0;
}

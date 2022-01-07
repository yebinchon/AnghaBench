
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs35l33_private {int regmap; int amp_cal; int is_tdm_mode; } ;


 unsigned int CS35L33_AMP_CAL ;
 int CS35L33_CLASSD_CTL ;
 unsigned int CS35L33_PDN_BST ;
 unsigned int CS35L33_PDN_TDM ;
 int CS35L33_PWRCTL1 ;
 int CS35L33_PWRCTL2 ;



 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct cs35l33_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs35l33_sdin_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs35l33_private *priv = snd_soc_component_get_drvdata(component);
 unsigned int val;

 switch (event) {
 case 128:
  regmap_update_bits(priv->regmap, CS35L33_PWRCTL1,
        CS35L33_PDN_BST, 0);
  val = priv->is_tdm_mode ? 0 : CS35L33_PDN_TDM;
  regmap_update_bits(priv->regmap, CS35L33_PWRCTL2,
        CS35L33_PDN_TDM, val);
  dev_dbg(component->dev, "BST turned on\n");
  break;
 case 129:
  dev_dbg(component->dev, "SDIN turned on\n");
  if (!priv->amp_cal) {
   regmap_update_bits(priv->regmap, CS35L33_CLASSD_CTL,
        CS35L33_AMP_CAL, CS35L33_AMP_CAL);
   dev_dbg(component->dev, "Amp calibration started\n");
   usleep_range(10000, 11000);
  }
  break;
 case 130:
  regmap_update_bits(priv->regmap, CS35L33_PWRCTL2,
        CS35L33_PDN_TDM, CS35L33_PDN_TDM);
  usleep_range(4000, 4100);
  regmap_update_bits(priv->regmap, CS35L33_PWRCTL1,
        CS35L33_PDN_BST, CS35L33_PDN_BST);
  dev_dbg(component->dev, "BST and SDIN turned off\n");
  break;
 default:
  dev_err(component->dev, "Invalid event = 0x%x\n", event);

 }

 return 0;
}

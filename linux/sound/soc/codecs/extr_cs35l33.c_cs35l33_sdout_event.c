
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs35l33_private {int regmap; int is_tdm_mode; } ;


 int CS35L33_CLK_CTL ;
 unsigned int CS35L33_PDN_TDM ;
 int CS35L33_PWRCTL2 ;
 unsigned int CS35L33_SDOUT_3ST_I2S ;
 unsigned int CS35L33_SDOUT_3ST_TDM ;


 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct cs35l33_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int cs35l33_sdout_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs35l33_private *priv = snd_soc_component_get_drvdata(component);
 unsigned int mask = CS35L33_SDOUT_3ST_I2S | CS35L33_PDN_TDM;
 unsigned int mask2 = CS35L33_SDOUT_3ST_TDM;
 unsigned int val, val2;

 switch (event) {
 case 128:
  if (priv->is_tdm_mode) {

   val = CS35L33_SDOUT_3ST_I2S;

   val2 = 0;
  } else {

   val = CS35L33_PDN_TDM;

   val2 = CS35L33_SDOUT_3ST_TDM;
  }
  dev_dbg(component->dev, "SDOUT turned on\n");
  break;
 case 129:
  val = CS35L33_SDOUT_3ST_I2S | CS35L33_PDN_TDM;
  val2 = CS35L33_SDOUT_3ST_TDM;
  dev_dbg(component->dev, "SDOUT turned off\n");
  break;
 default:
  dev_err(component->dev, "Invalid event = 0x%x\n", event);
  return 0;
 }

 regmap_update_bits(priv->regmap, CS35L33_PWRCTL2,
  mask, val);
 regmap_update_bits(priv->regmap, CS35L33_CLK_CTL,
  mask2, val2);

 return 0;
}

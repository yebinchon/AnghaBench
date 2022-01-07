
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs35l33_private {int amp_cal; int regmap; } ;


 int CS35L33_AMP_CAL ;
 int CS35L33_CLASSD_CTL ;


 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct cs35l33_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs35l33_spkrdrv_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs35l33_private *priv = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (!priv->amp_cal) {
   usleep_range(8000, 9000);
   priv->amp_cal = 1;
   regmap_update_bits(priv->regmap, CS35L33_CLASSD_CTL,
        CS35L33_AMP_CAL, 0);
   dev_dbg(component->dev, "Amp calibration done\n");
  }
  dev_dbg(component->dev, "Amp turned on\n");
  break;
 case 129:
  dev_dbg(component->dev, "Amp turned off\n");
  break;
 default:
  dev_err(component->dev, "Invalid event = 0x%x\n", event);
  break;
 }

 return 0;
}

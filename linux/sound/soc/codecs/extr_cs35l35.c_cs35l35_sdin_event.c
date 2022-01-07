
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs35l35_private {int regmap; } ;


 int CS35L35_AMP_DIGSFT_MASK ;
 int CS35L35_AMP_DIGSFT_SHIFT ;
 int CS35L35_AMP_DIG_VOL_CTL ;
 int CS35L35_CLK_CTL1 ;
 int CS35L35_DISCHG_FILT_MASK ;
 int CS35L35_DISCHG_FILT_SHIFT ;
 int CS35L35_MCLK_DIS_MASK ;
 int CS35L35_MCLK_DIS_SHIFT ;
 int CS35L35_PDN_ALL_MASK ;
 int CS35L35_PWRCTL1 ;
 int EINVAL ;


 int cs35l35_wait_for_pdn (struct cs35l35_private*) ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct cs35l35_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int cs35l35_sdin_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs35l35_private *cs35l35 = snd_soc_component_get_drvdata(component);
 int ret = 0;

 switch (event) {
 case 128:
  regmap_update_bits(cs35l35->regmap, CS35L35_CLK_CTL1,
     CS35L35_MCLK_DIS_MASK,
     0 << CS35L35_MCLK_DIS_SHIFT);
  regmap_update_bits(cs35l35->regmap, CS35L35_PWRCTL1,
     CS35L35_DISCHG_FILT_MASK,
     0 << CS35L35_DISCHG_FILT_SHIFT);
  regmap_update_bits(cs35l35->regmap, CS35L35_PWRCTL1,
     CS35L35_PDN_ALL_MASK, 0);
  break;
 case 129:
  regmap_update_bits(cs35l35->regmap, CS35L35_PWRCTL1,
     CS35L35_DISCHG_FILT_MASK,
     1 << CS35L35_DISCHG_FILT_SHIFT);
  regmap_update_bits(cs35l35->regmap, CS35L35_PWRCTL1,
       CS35L35_PDN_ALL_MASK, 1);


  regmap_update_bits(cs35l35->regmap, CS35L35_AMP_DIG_VOL_CTL,
       CS35L35_AMP_DIGSFT_MASK, 0);

  ret = cs35l35_wait_for_pdn(cs35l35);

  regmap_update_bits(cs35l35->regmap, CS35L35_CLK_CTL1,
     CS35L35_MCLK_DIS_MASK,
     1 << CS35L35_MCLK_DIS_SHIFT);

  regmap_update_bits(cs35l35->regmap, CS35L35_AMP_DIG_VOL_CTL,
       CS35L35_AMP_DIGSFT_MASK,
       1 << CS35L35_AMP_DIGSFT_SHIFT);
  break;
 default:
  dev_err(component->dev, "Invalid event = 0x%x\n", event);
  ret = -EINVAL;
 }
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs35l36_private {int regmap; int dev; } ;


 int CS35L36_AMP_MUTE_MASK ;
 int CS35L36_AMP_MUTE_SHIFT ;
 int CS35L36_AMP_OUT_MUTE ;
 int CS35L36_ASP_RX1_SEL ;
 int CS35L36_GLOBAL_EN_MASK ;
 int CS35L36_GLOBAL_EN_SHIFT ;
 int CS35L36_INT4_RAW_STATUS ;
 int CS35L36_PCM_RX_SEL_MASK ;
 int CS35L36_PCM_RX_SEL_PCM ;
 int CS35L36_PCM_RX_SEL_ZERO ;
 int CS35L36_PLL_UNLOCK_MASK ;
 int CS35L36_PWR_CTRL1 ;
 int EINVAL ;



 int WARN_ON_ONCE (int) ;
 int dev_crit (int ,char*) ;
 int dev_dbg (int ,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct cs35l36_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs35l36_main_amp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
   snd_soc_dapm_to_component(w->dapm);
 struct cs35l36_private *cs35l36 =
   snd_soc_component_get_drvdata(component);
 u32 reg;

 switch (event) {
 case 129:
  regmap_update_bits(cs35l36->regmap, CS35L36_PWR_CTRL1,
       CS35L36_GLOBAL_EN_MASK,
       1 << CS35L36_GLOBAL_EN_SHIFT);

  usleep_range(2000, 2100);

  regmap_read(cs35l36->regmap, CS35L36_INT4_RAW_STATUS, &reg);

  if (WARN_ON_ONCE(reg & CS35L36_PLL_UNLOCK_MASK))
   dev_crit(cs35l36->dev, "PLL Unlocked\n");

  regmap_update_bits(cs35l36->regmap, CS35L36_ASP_RX1_SEL,
       CS35L36_PCM_RX_SEL_MASK,
       CS35L36_PCM_RX_SEL_PCM);
  regmap_update_bits(cs35l36->regmap, CS35L36_AMP_OUT_MUTE,
       CS35L36_AMP_MUTE_MASK,
       0 << CS35L36_AMP_MUTE_SHIFT);
  break;
 case 128:
  regmap_update_bits(cs35l36->regmap, CS35L36_ASP_RX1_SEL,
       CS35L36_PCM_RX_SEL_MASK,
       CS35L36_PCM_RX_SEL_ZERO);
  regmap_update_bits(cs35l36->regmap, CS35L36_AMP_OUT_MUTE,
       CS35L36_AMP_MUTE_MASK,
       1 << CS35L36_AMP_MUTE_SHIFT);
  break;
 case 130:
  regmap_update_bits(cs35l36->regmap, CS35L36_PWR_CTRL1,
       CS35L36_GLOBAL_EN_MASK,
       0 << CS35L36_GLOBAL_EN_SHIFT);

  usleep_range(2000, 2100);
  break;
 default:
  dev_dbg(component->dev, "Invalid event = 0x%x\n", event);
  return -EINVAL;
 }

 return 0;
}

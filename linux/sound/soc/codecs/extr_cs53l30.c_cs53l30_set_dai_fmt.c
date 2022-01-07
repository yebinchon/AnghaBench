
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {int component; } ;
struct cs53l30_private {int regmap; } ;


 int CS53L30_ASPCFG_CTL ;
 int CS53L30_ASP_CTL1 ;
 int CS53L30_ASP_MS ;
 int CS53L30_ASP_SCLK_INV ;
 int CS53L30_ASP_TDM_PDN ;
 int CS53L30_SHIFT_LEFT ;
 int EINVAL ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct cs53l30_private* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int cs53l30_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct cs53l30_private *priv = snd_soc_component_get_drvdata(dai->component);
 u8 aspcfg = 0, aspctl1 = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  aspcfg |= CS53L30_ASP_MS;
  break;
 case 132:
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:

  aspctl1 |= CS53L30_ASP_TDM_PDN;
  break;
 case 131:





  aspctl1 |= CS53L30_SHIFT_LEFT;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
 case 129:
  aspcfg ^= CS53L30_ASP_SCLK_INV;
  break;
 default:
  break;
 }

 regmap_update_bits(priv->regmap, CS53L30_ASPCFG_CTL,
      CS53L30_ASP_MS | CS53L30_ASP_SCLK_INV, aspcfg);

 regmap_update_bits(priv->regmap, CS53L30_ASP_CTL1,
      CS53L30_ASP_TDM_PDN | CS53L30_SHIFT_LEFT, aspctl1);

 return 0;
}

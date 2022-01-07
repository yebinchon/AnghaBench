
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs35l33_private {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int CS35L33_CLK_CTL ;
 int CS35L33_INT_STATUS_2 ;
 int CS35L33_MCLKDIS ;
 int CS35L33_PDN_ALL ;
 unsigned int CS35L33_PDN_DONE ;
 int CS35L33_PWRCTL1 ;
 int EINVAL ;




 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct cs35l33_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs35l33_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 unsigned int val;
 struct cs35l33_private *priv = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;
 case 129:
  regmap_update_bits(priv->regmap, CS35L33_PWRCTL1,
        CS35L33_PDN_ALL, 0);
  regmap_update_bits(priv->regmap, CS35L33_CLK_CTL,
        CS35L33_MCLKDIS, 0);
  break;
 case 128:
  regmap_update_bits(priv->regmap, CS35L33_PWRCTL1,
        CS35L33_PDN_ALL, CS35L33_PDN_ALL);
  regmap_read(priv->regmap, CS35L33_INT_STATUS_2, &val);
  usleep_range(1000, 1100);
  if (val & CS35L33_PDN_DONE)
   regmap_update_bits(priv->regmap, CS35L33_CLK_CTL,
         CS35L33_MCLKDIS, CS35L33_MCLKDIS);
  break;
 case 131:
  break;
 default:
  return -EINVAL;
 }

 return 0;
}

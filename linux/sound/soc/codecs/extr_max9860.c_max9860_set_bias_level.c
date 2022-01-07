
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct max9860_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int MAX9860_PWRMAN ;
 int MAX9860_SHDN ;




 int dev_err (int ,char*,int) ;
 struct max9860_priv* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max9860_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 struct max9860_priv *max9860 = dev_get_drvdata(component->dev);
 int ret;

 switch (level) {
 case 130:
 case 129:
  break;

 case 128:
  ret = regmap_update_bits(max9860->regmap, MAX9860_PWRMAN,
      MAX9860_SHDN, MAX9860_SHDN);
  if (ret) {
   dev_err(component->dev, "Failed to remove SHDN: %d\n",
    ret);
   return ret;
  }
  break;

 case 131:
  ret = regmap_update_bits(max9860->regmap, MAX9860_PWRMAN,
      MAX9860_SHDN, 0);
  if (ret) {
   dev_err(component->dev, "Failed to request SHDN: %d\n",
    ret);
   return ret;
  }
  break;
 }

 return 0;
}

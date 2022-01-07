
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct pcm512x_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int PCM512x_POWER ;
 int PCM512x_RQST ;




 int dev_err (int ,char*,int) ;
 struct pcm512x_priv* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pcm512x_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 struct pcm512x_priv *pcm512x = dev_get_drvdata(component->dev);
 int ret;

 switch (level) {
 case 130:
 case 129:
  break;

 case 128:
  ret = regmap_update_bits(pcm512x->regmap, PCM512x_POWER,
      PCM512x_RQST, 0);
  if (ret != 0) {
   dev_err(component->dev, "Failed to remove standby: %d\n",
    ret);
   return ret;
  }
  break;

 case 131:
  ret = regmap_update_bits(pcm512x->regmap, PCM512x_POWER,
      PCM512x_RQST, PCM512x_RQST);
  if (ret != 0) {
   dev_err(component->dev, "Failed to request standby: %d\n",
    ret);
   return ret;
  }
  break;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct pcm186x_priv {TYPE_1__* supplies; struct regmap* regmap; } ;
struct device {int dummy; } ;
typedef enum pcm186x_type { ____Placeholder_pcm186x_type } pcm186x_type ;
struct TYPE_5__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;




 int PCM186X_PAGE ;
 int PCM186X_RESET ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct pcm186x_priv*) ;
 struct pcm186x_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int pcm1863_dai ;
 int pcm1865_dai ;
 int * pcm186x_supply_names ;
 int regmap_write (struct regmap*,int ,int ) ;
 int regulator_bulk_disable (int,TYPE_1__*) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int soc_codec_dev_pcm1863 ;
 int soc_codec_dev_pcm1865 ;

int pcm186x_probe(struct device *dev, enum pcm186x_type type, int irq,
    struct regmap *regmap)
{
 struct pcm186x_priv *priv;
 int i, ret;

 priv = devm_kzalloc(dev, sizeof(struct pcm186x_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 dev_set_drvdata(dev, priv);
 priv->regmap = regmap;

 for (i = 0; i < ARRAY_SIZE(priv->supplies); i++)
  priv->supplies[i].supply = pcm186x_supply_names[i];

 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(priv->supplies),
          priv->supplies);
 if (ret) {
  dev_err(dev, "failed to request supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(priv->supplies),
        priv->supplies);
 if (ret) {
  dev_err(dev, "failed enable supplies: %d\n", ret);
  return ret;
 }


 ret = regmap_write(regmap, PCM186X_PAGE, PCM186X_RESET);
 if (ret) {
  dev_err(dev, "failed to write device: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_disable(ARRAY_SIZE(priv->supplies),
         priv->supplies);
 if (ret) {
  dev_err(dev, "failed disable supplies: %d\n", ret);
  return ret;
 }

 switch (type) {
 case 128:
 case 129:
  ret = devm_snd_soc_register_component(dev, &soc_codec_dev_pcm1865,
          &pcm1865_dai, 1);
  break;
 case 130:
 case 131:
 default:
  ret = devm_snd_soc_register_component(dev, &soc_codec_dev_pcm1863,
          &pcm1863_dai, 1);
 }
 if (ret) {
  dev_err(dev, "failed to register CODEC: %d\n", ret);
  return ret;
 }

 return 0;
}

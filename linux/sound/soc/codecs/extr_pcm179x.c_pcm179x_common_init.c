
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct pcm179x_private {struct regmap* regmap; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,struct pcm179x_private*) ;
 struct pcm179x_private* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int pcm179x_dai ;
 int soc_component_dev_pcm179x ;

int pcm179x_common_init(struct device *dev, struct regmap *regmap)
{
 struct pcm179x_private *pcm179x;

 pcm179x = devm_kzalloc(dev, sizeof(struct pcm179x_private),
    GFP_KERNEL);
 if (!pcm179x)
  return -ENOMEM;

 pcm179x->regmap = regmap;
 dev_set_drvdata(dev, pcm179x);

 return devm_snd_soc_register_component(dev,
   &soc_component_dev_pcm179x, &pcm179x_dai, 1);
}

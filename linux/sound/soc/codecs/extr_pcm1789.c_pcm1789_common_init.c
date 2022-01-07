
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct pcm1789_private {int work; int reset; struct device* dev; struct regmap* regmap; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_set_drvdata (struct device*,struct pcm1789_private*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct pcm1789_private* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int msleep (int) ;
 int pcm1789_dai ;
 int pcm1789_work_queue ;
 int soc_component_dev_pcm1789 ;

int pcm1789_common_init(struct device *dev, struct regmap *regmap)
{
 struct pcm1789_private *pcm1789;

 pcm1789 = devm_kzalloc(dev, sizeof(struct pcm1789_private),
          GFP_KERNEL);
 if (!pcm1789)
  return -ENOMEM;

 pcm1789->regmap = regmap;
 pcm1789->dev = dev;
 dev_set_drvdata(dev, pcm1789);

 pcm1789->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(pcm1789->reset))
  return PTR_ERR(pcm1789->reset);

 gpiod_set_value_cansleep(pcm1789->reset, 0);
 msleep(300);

 INIT_WORK(&pcm1789->work, pcm1789_work_queue);

 return devm_snd_soc_register_component(dev, &soc_component_dev_pcm1789,
            &pcm1789_dai, 1);
}

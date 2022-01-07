
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97_reset_cfg {int dummy; } ;
struct snd_ac97_bus_ops {int reset; int warm_reset; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 struct snd_ac97_reset_cfg snd_ac97_rst_cfg ;
 int snd_soc_ac97_parse_pinctl (struct device*,struct snd_ac97_reset_cfg*) ;
 int snd_soc_ac97_reset ;
 int snd_soc_ac97_warm_reset ;
 int snd_soc_set_ac97_ops (struct snd_ac97_bus_ops*) ;

int snd_soc_set_ac97_ops_of_reset(struct snd_ac97_bus_ops *ops,
  struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct snd_ac97_reset_cfg cfg;
 int ret;

 ret = snd_soc_ac97_parse_pinctl(dev, &cfg);
 if (ret)
  return ret;

 ret = snd_soc_set_ac97_ops(ops);
 if (ret)
  return ret;

 ops->warm_reset = snd_soc_ac97_warm_reset;
 ops->reset = snd_soc_ac97_reset;

 snd_ac97_rst_cfg = cfg;
 return 0;
}

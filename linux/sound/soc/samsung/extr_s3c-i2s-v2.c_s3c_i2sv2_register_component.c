
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_ops {scalar_t__ delay; int set_sysclk; int set_clkdiv; int set_fmt; scalar_t__ hw_params; int trigger; } ;
struct snd_soc_dai_driver {int resume; int suspend; scalar_t__ ops; } ;
struct snd_soc_component_driver {int dummy; } ;
struct device {int dummy; } ;


 int devm_snd_soc_register_component (struct device*,struct snd_soc_component_driver const*,struct snd_soc_dai_driver*,int) ;
 scalar_t__ s3c2412_i2s_delay ;
 int s3c2412_i2s_resume ;
 int s3c2412_i2s_set_clkdiv ;
 int s3c2412_i2s_set_fmt ;
 int s3c2412_i2s_suspend ;
 int s3c2412_i2s_trigger ;
 scalar_t__ s3c_i2sv2_hw_params ;
 int s3c_i2sv2_set_sysclk ;

int s3c_i2sv2_register_component(struct device *dev, int id,
      const struct snd_soc_component_driver *cmp_drv,
      struct snd_soc_dai_driver *dai_drv)
{
 struct snd_soc_dai_ops *ops = (struct snd_soc_dai_ops *)dai_drv->ops;

 ops->trigger = s3c2412_i2s_trigger;
 if (!ops->hw_params)
  ops->hw_params = s3c_i2sv2_hw_params;
 ops->set_fmt = s3c2412_i2s_set_fmt;
 ops->set_clkdiv = s3c2412_i2s_set_clkdiv;
 ops->set_sysclk = s3c_i2sv2_set_sysclk;


 if (!ops->delay)
  ops->delay = s3c2412_i2s_delay;

 dai_drv->suspend = s3c2412_i2s_suspend;
 dai_drv->resume = s3c2412_i2s_resume;

 return devm_snd_soc_register_component(dev, cmp_drv, dai_drv, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct pcm186x_priv {int supplies; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int PCM186X_POWER_CTRL ;
 int PCM186X_PWR_CTRL_PWRDN ;
 int dev_err (int ,char*) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct pcm186x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int pcm186x_power_on(struct snd_soc_component *component)
{
 struct pcm186x_priv *priv = snd_soc_component_get_drvdata(component);
 int ret = 0;

 ret = regulator_bulk_enable(ARRAY_SIZE(priv->supplies),
        priv->supplies);
 if (ret)
  return ret;

 regcache_cache_only(priv->regmap, 0);
 ret = regcache_sync(priv->regmap);
 if (ret) {
  dev_err(component->dev, "Failed to restore cache\n");
  regcache_cache_only(priv->regmap, 1);
  regulator_bulk_disable(ARRAY_SIZE(priv->supplies),
           priv->supplies);
  return ret;
 }

 snd_soc_component_update_bits(component, PCM186X_POWER_CTRL,
       PCM186X_PWR_CTRL_PWRDN, 0);

 return 0;
}

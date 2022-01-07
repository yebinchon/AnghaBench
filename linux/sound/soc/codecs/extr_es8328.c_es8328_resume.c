
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct regmap {int dummy; } ;
struct es8328_priv {int supplies; int clk; } ;


 int ARRAY_SIZE (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 struct regmap* dev_get_regmap (int ,int *) ;
 int regcache_mark_dirty (struct regmap*) ;
 int regcache_sync (struct regmap*) ;
 int regulator_bulk_enable (int ,int ) ;
 struct es8328_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int es8328_resume(struct snd_soc_component *component)
{
 struct regmap *regmap = dev_get_regmap(component->dev, ((void*)0));
 struct es8328_priv *es8328;
 int ret;

 es8328 = snd_soc_component_get_drvdata(component);

 ret = clk_prepare_enable(es8328->clk);
 if (ret) {
  dev_err(component->dev, "unable to enable clock\n");
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(es8328->supplies),
     es8328->supplies);
 if (ret) {
  dev_err(component->dev, "unable to enable regulators\n");
  return ret;
 }

 regcache_mark_dirty(regmap);
 ret = regcache_sync(regmap);
 if (ret) {
  dev_err(component->dev, "unable to sync regcache\n");
  return ret;
 }

 return 0;
}

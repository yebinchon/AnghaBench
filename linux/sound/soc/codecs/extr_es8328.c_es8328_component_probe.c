
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct es8328_priv {int supplies; int clk; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int devm_clk_get (int ,int *) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct es8328_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int es8328_component_probe(struct snd_soc_component *component)
{
 struct es8328_priv *es8328;
 int ret;

 es8328 = snd_soc_component_get_drvdata(component);

 ret = regulator_bulk_enable(ARRAY_SIZE(es8328->supplies),
     es8328->supplies);
 if (ret) {
  dev_err(component->dev, "unable to enable regulators\n");
  return ret;
 }


 es8328->clk = devm_clk_get(component->dev, ((void*)0));
 if (IS_ERR(es8328->clk)) {
  dev_err(component->dev, "codec clock missing or invalid\n");
  ret = PTR_ERR(es8328->clk);
  goto clk_fail;
 }

 ret = clk_prepare_enable(es8328->clk);
 if (ret) {
  dev_err(component->dev, "unable to prepare codec clk\n");
  goto clk_fail;
 }

 return 0;

clk_fail:
 regulator_bulk_disable(ARRAY_SIZE(es8328->supplies),
          es8328->supplies);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct es8328_priv {int supplies; int clk; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (int ) ;
 int dev_err (int ,char*) ;
 int regulator_bulk_disable (int ,int ) ;
 struct es8328_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int es8328_suspend(struct snd_soc_component *component)
{
 struct es8328_priv *es8328;
 int ret;

 es8328 = snd_soc_component_get_drvdata(component);

 clk_disable_unprepare(es8328->clk);

 ret = regulator_bulk_disable(ARRAY_SIZE(es8328->supplies),
   es8328->supplies);
 if (ret) {
  dev_err(component->dev, "unable to disable regulators\n");
  return ret;
 }
 return 0;
}

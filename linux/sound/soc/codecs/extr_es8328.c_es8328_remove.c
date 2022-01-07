
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct es8328_priv {int supplies; scalar_t__ clk; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (scalar_t__) ;
 int regulator_bulk_disable (int ,int ) ;
 struct es8328_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void es8328_remove(struct snd_soc_component *component)
{
 struct es8328_priv *es8328;

 es8328 = snd_soc_component_get_drvdata(component);

 if (es8328->clk)
  clk_disable_unprepare(es8328->clk);

 regulator_bulk_disable(ARRAY_SIZE(es8328->supplies),
          es8328->supplies);
}

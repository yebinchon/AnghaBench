
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct es8316_priv {int mclk; } ;


 int clk_disable_unprepare (int ) ;
 struct es8316_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void es8316_remove(struct snd_soc_component *component)
{
 struct es8316_priv *es8316 = snd_soc_component_get_drvdata(component);

 clk_disable_unprepare(es8316->mclk);
}

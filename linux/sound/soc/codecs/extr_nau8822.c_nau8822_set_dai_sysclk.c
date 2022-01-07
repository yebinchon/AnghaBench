
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct nau8822 {int div_id; unsigned int sysclk; } ;


 int NAU8822_CLK_PLL ;
 int dev_dbg (int ,char*,unsigned int,char*) ;
 struct nau8822* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int nau8822_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
     unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct nau8822 *nau8822 = snd_soc_component_get_drvdata(component);

 nau8822->div_id = clk_id;
 nau8822->sysclk = freq;
 dev_dbg(component->dev, "master sysclk %dHz, source %s\n", freq,
  clk_id == NAU8822_CLK_PLL ? "PLL" : "MCLK");

 return 0;
}

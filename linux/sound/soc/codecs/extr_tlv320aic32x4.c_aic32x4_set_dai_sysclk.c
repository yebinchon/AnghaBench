
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct clk {int dummy; } ;


 struct clk* clk_get_parent (struct clk*) ;
 int clk_set_rate (struct clk*,unsigned int) ;
 struct clk* devm_clk_get (int ,char*) ;

__attribute__((used)) static int aic32x4_set_dai_sysclk(struct snd_soc_dai *codec_dai,
      int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct clk *mclk;
 struct clk *pll;

 pll = devm_clk_get(component->dev, "pll");
 mclk = clk_get_parent(pll);

 return clk_set_rate(mclk, freq);
}

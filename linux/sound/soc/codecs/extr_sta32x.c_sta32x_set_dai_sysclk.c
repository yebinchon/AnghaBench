
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta32x_priv {unsigned int mclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int dev_dbg (int ,char*,unsigned int) ;
 struct sta32x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int sta32x_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct sta32x_priv *sta32x = snd_soc_component_get_drvdata(component);

 dev_dbg(component->dev, "mclk=%u\n", freq);
 sta32x->mclk = freq;

 return 0;
}

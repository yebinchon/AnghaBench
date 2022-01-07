
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cx2072x_priv {unsigned int mclk_rate; int mclk; } ;


 int EINVAL ;
 scalar_t__ clk_set_rate (int ,unsigned int) ;
 int dev_err (int ,char*) ;
 struct cx2072x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cx2072x_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
      unsigned int freq, int dir)
{
 struct snd_soc_component *codec = dai->component;
 struct cx2072x_priv *cx2072x = snd_soc_component_get_drvdata(codec);

 if (clk_set_rate(cx2072x->mclk, freq)) {
  dev_err(codec->dev, "set clk rate failed\n");
  return -EINVAL;
 }

 cx2072x->mclk_rate = freq;
 return 0;
}

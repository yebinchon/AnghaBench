
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pcm512x_priv {int pll_out; } ;


 int pcm512x_dac_max (struct pcm512x_priv*,int) ;
 unsigned long rounddown (int ,unsigned long) ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static unsigned long pcm512x_pllin_dac_rate(struct snd_soc_dai *dai,
         unsigned long osr_rate,
         unsigned long pllin_rate)
{
 struct snd_soc_component *component = dai->component;
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);
 unsigned long dac_rate;

 if (!pcm512x->pll_out)
  return 0;

 if (pllin_rate % osr_rate)
  return 0;


 for (dac_rate = rounddown(pcm512x_dac_max(pcm512x, 6144000), osr_rate);
      dac_rate;
      dac_rate -= osr_rate) {

  if (pllin_rate / dac_rate > 128)
   return 0;

  if (!(pllin_rate % dac_rate))
   return dac_rate;

  dac_rate -= osr_rate;
 }

 return 0;
}

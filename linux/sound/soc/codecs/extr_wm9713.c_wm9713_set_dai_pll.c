
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int wm9713_set_pll (struct snd_soc_component*,int,unsigned int,unsigned int) ;

__attribute__((used)) static int wm9713_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
  int source, unsigned int freq_in, unsigned int freq_out)
{
 struct snd_soc_component *component = codec_dai->component;
 return wm9713_set_pll(component, pll_id, freq_in, freq_out);
}

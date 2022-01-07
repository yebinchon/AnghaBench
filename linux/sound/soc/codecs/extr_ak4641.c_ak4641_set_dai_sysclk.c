
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ak4641_priv {unsigned int sysclk; } ;


 struct ak4641_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4641_set_dai_sysclk(struct snd_soc_dai *codec_dai,
 int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct ak4641_priv *ak4641 = snd_soc_component_get_drvdata(component);

 ak4641->sysclk = freq;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cs35l35_private {unsigned int sclk; } ;


 struct cs35l35_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l35_dai_set_sysclk(struct snd_soc_dai *dai,
    int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct cs35l35_private *cs35l35 = snd_soc_component_get_drvdata(component);


 cs35l35->sclk = freq;

 return 0;
}

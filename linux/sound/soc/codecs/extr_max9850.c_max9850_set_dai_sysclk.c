
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct max9850_priv {unsigned int sysclk; } ;


 int EINVAL ;
 int MAX9850_CLOCK ;
 struct max9850_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int max9850_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct max9850_priv *max9850 = snd_soc_component_get_drvdata(component);


 if (freq <= 13000000)
  snd_soc_component_write(component, MAX9850_CLOCK, 0x0);
 else if (freq <= 26000000)
  snd_soc_component_write(component, MAX9850_CLOCK, 0x4);
 else if (freq <= 40000000)
  snd_soc_component_write(component, MAX9850_CLOCK, 0x8);
 else
  return -EINVAL;

 max9850->sysclk = freq;
 return 0;
}

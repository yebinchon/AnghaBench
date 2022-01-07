
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_priv {unsigned int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned int,...) ;
 struct twl4030_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int twl4030_set_dai_sysclk(struct snd_soc_dai *codec_dai, int clk_id,
      unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct twl4030_priv *twl4030 = snd_soc_component_get_drvdata(component);

 switch (freq) {
 case 19200000:
 case 26000000:
 case 38400000:
  break;
 default:
  dev_err(component->dev, "Unsupported HFCLKIN: %u\n", freq);
  return -EINVAL;
 }

 if ((freq / 1000) != twl4030->sysclk) {
  dev_err(component->dev,
   "Mismatch in HFCLKIN: %u (configured: %u)\n",
   freq, twl4030->sysclk * 1000);
  return -EINVAL;
 }

 return 0;
}

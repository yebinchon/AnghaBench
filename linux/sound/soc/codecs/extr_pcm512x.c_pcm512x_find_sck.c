
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; struct device* dev; } ;
struct snd_soc_component {int dummy; } ;
struct pcm512x_priv {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,unsigned long) ;
 int dev_err (struct device*,char*) ;
 int fls (int) ;
 int pcm512x_pll_max (struct pcm512x_priv*) ;
 unsigned long rounddown (int,unsigned long) ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static unsigned long pcm512x_find_sck(struct snd_soc_dai *dai,
          unsigned long bclk_rate)
{
 struct device *dev = dai->dev;
 struct snd_soc_component *component = dai->component;
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);
 unsigned long sck_rate;
 int pow2;
 pow2 = 1 << fls((pcm512x_pll_max(pcm512x) - 16000000) / bclk_rate);
 for (; pow2; pow2 >>= 1) {
  sck_rate = rounddown(pcm512x_pll_max(pcm512x),
         bclk_rate * pow2);
  if (sck_rate >= 16000000)
   break;
 }
 if (!pow2) {
  dev_err(dev, "Impossible to generate a suitable SCK\n");
  return 0;
 }

 dev_dbg(dev, "sck_rate %lu\n", sck_rate);
 return sck_rate;
}

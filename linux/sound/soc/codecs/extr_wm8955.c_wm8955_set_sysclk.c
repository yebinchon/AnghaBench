
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8955_priv {unsigned int mclk_rate; } ;
struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;

 int WM8955_MCLKDIV2 ;
 int WM8955_SAMPLE_RATE ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 struct wm8955_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8955_set_sysclk(struct snd_soc_dai *dai, int clk_id,
        unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8955_priv *priv = snd_soc_component_get_drvdata(component);
 int div;

 switch (clk_id) {
 case 128:
  if (freq > 15000000) {
   priv->mclk_rate = freq /= 2;
   div = WM8955_MCLKDIV2;
  } else {
   priv->mclk_rate = freq;
   div = 0;
  }

  snd_soc_component_update_bits(component, WM8955_SAMPLE_RATE,
        WM8955_MCLKDIV2, div);
  break;

 default:
  return -EINVAL;
 }

 dev_dbg(dai->dev, "Clock source is %d at %uHz\n", clk_id, freq);

 return 0;
}

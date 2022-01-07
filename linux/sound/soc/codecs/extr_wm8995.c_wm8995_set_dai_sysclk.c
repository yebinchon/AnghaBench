
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8995_priv {int* sysclk; unsigned int* mclk; } ;
struct snd_soc_dai {int id; int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;





 int configure_clock (struct snd_soc_component*) ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*,int) ;
 struct wm8995_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8995_set_dai_sysclk(struct snd_soc_dai *dai,
     int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component;
 struct wm8995_priv *wm8995;

 component = dai->component;
 wm8995 = snd_soc_component_get_drvdata(component);

 switch (dai->id) {
 case 0:
 case 1:
  break;
 default:

  return -EINVAL;
 }

 switch (clk_id) {
 case 130:
  wm8995->sysclk[dai->id] = 130;
  wm8995->mclk[0] = freq;
  dev_dbg(dai->dev, "AIF%d using MCLK1 at %uHz\n",
   dai->id + 1, freq);
  break;
 case 129:
  wm8995->sysclk[dai->id] = 129;
  wm8995->mclk[1] = freq;
  dev_dbg(dai->dev, "AIF%d using MCLK2 at %uHz\n",
   dai->id + 1, freq);
  break;
 case 132:
  wm8995->sysclk[dai->id] = 132;
  dev_dbg(dai->dev, "AIF%d using FLL1\n", dai->id + 1);
  break;
 case 131:
  wm8995->sysclk[dai->id] = 131;
  dev_dbg(dai->dev, "AIF%d using FLL2\n", dai->id + 1);
  break;
 case 128:
 default:
  dev_err(dai->dev, "Unknown clock source %d\n", clk_id);
  return -EINVAL;
 }

 configure_clock(component);

 return 0;
}

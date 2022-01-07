
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {int* sysclk; unsigned int* mclk; int* aifdiv; int * aifclk; } ;
struct snd_soc_dai {int id; int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 int WM8994_AIF1CLK_RATE_MASK ;
 int WM8994_AIF1_RATE ;
 int WM8994_AIF2CLK_RATE_MASK ;
 int WM8994_AIF2_RATE ;
 int WM8994_CLOCKING_2 ;
 int WM8994_OPCLK_DIV_MASK ;
 int WM8994_OPCLK_ENA ;
 int WM8994_POWER_MANAGEMENT_2 ;





 int configure_clock (struct snd_soc_component*) ;
 int dev_dbg (int ,char*,...) ;
 int max (int ,int ) ;
 unsigned int* opclk_divs ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8994_set_dai_sysclk(struct snd_soc_dai *dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 int i;

 switch (dai->id) {
 case 1:
 case 2:
  break;

 default:

  return -EINVAL;
 }

 switch (clk_id) {
 case 130:
  wm8994->sysclk[dai->id - 1] = 130;
  wm8994->mclk[0] = freq;
  dev_dbg(dai->dev, "AIF%d using MCLK1 at %uHz\n",
   dai->id, freq);
  break;

 case 129:

  wm8994->sysclk[dai->id - 1] = 129;
  wm8994->mclk[1] = freq;
  dev_dbg(dai->dev, "AIF%d using MCLK2 at %uHz\n",
   dai->id, freq);
  break;

 case 132:
  wm8994->sysclk[dai->id - 1] = 132;
  dev_dbg(dai->dev, "AIF%d using FLL1\n", dai->id);
  break;

 case 131:
  wm8994->sysclk[dai->id - 1] = 131;
  dev_dbg(dai->dev, "AIF%d using FLL2\n", dai->id);
  break;

 case 128:



  if (freq) {
   for (i = 0; i < ARRAY_SIZE(opclk_divs); i++)
    if (opclk_divs[i] == freq)
     break;
   if (i == ARRAY_SIZE(opclk_divs))
    return -EINVAL;
   snd_soc_component_update_bits(component, WM8994_CLOCKING_2,
         WM8994_OPCLK_DIV_MASK, i);
   snd_soc_component_update_bits(component, WM8994_POWER_MANAGEMENT_2,
         WM8994_OPCLK_ENA, WM8994_OPCLK_ENA);
  } else {
   snd_soc_component_update_bits(component, WM8994_POWER_MANAGEMENT_2,
         WM8994_OPCLK_ENA, 0);
  }
  break;

 default:
  return -EINVAL;
 }

 configure_clock(component);





 if (max(wm8994->aifclk[0], wm8994->aifclk[1]) < 50000) {
  dev_dbg(component->dev, "Configuring AIFs for 128fs\n");

  wm8994->aifdiv[0] = snd_soc_component_read32(component, WM8994_AIF1_RATE)
   & WM8994_AIF1CLK_RATE_MASK;
  wm8994->aifdiv[1] = snd_soc_component_read32(component, WM8994_AIF2_RATE)
   & WM8994_AIF1CLK_RATE_MASK;

  snd_soc_component_update_bits(component, WM8994_AIF1_RATE,
        WM8994_AIF1CLK_RATE_MASK, 0x1);
  snd_soc_component_update_bits(component, WM8994_AIF2_RATE,
        WM8994_AIF2CLK_RATE_MASK, 0x1);
 } else if (wm8994->aifdiv[0]) {
  snd_soc_component_update_bits(component, WM8994_AIF1_RATE,
        WM8994_AIF1CLK_RATE_MASK,
        wm8994->aifdiv[0]);
  snd_soc_component_update_bits(component, WM8994_AIF2_RATE,
        WM8994_AIF2CLK_RATE_MASK,
        wm8994->aifdiv[1]);

  wm8994->aifdiv[0] = 0;
  wm8994->aifdiv[1] = 0;
 }

 return 0;
}

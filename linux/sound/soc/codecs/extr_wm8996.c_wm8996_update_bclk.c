
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8996_priv {int sysclk; int* bclk_rate; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int WM8996_AIF1_BCLK ;
 int WM8996_AIF1_BCLK_DIV_MASK ;
 int WM8996_AIF2_BCLK ;
 int WM8996_AIFS ;
 int* bclk_divs ;
 int dev_dbg (int ,char*,int,int) ;
 struct wm8996_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int ,int) ;

__attribute__((used)) static void wm8996_update_bclk(struct snd_soc_component *component)
{
 struct wm8996_priv *wm8996 = snd_soc_component_get_drvdata(component);
 int aif, best, cur_val, bclk_rate, bclk_reg, i;




 if (wm8996->sysclk < 64000)
  return;

 for (aif = 0; aif < WM8996_AIFS; aif++) {
  switch (aif) {
  case 0:
   bclk_reg = WM8996_AIF1_BCLK;
   break;
  case 1:
   bclk_reg = WM8996_AIF2_BCLK;
   break;
  }

  bclk_rate = wm8996->bclk_rate[aif];


  best = 0;
  for (i = 0; i < ARRAY_SIZE(bclk_divs); i++) {
   cur_val = (wm8996->sysclk / bclk_divs[i]) - bclk_rate;
   if (cur_val < 0)
    break;
   best = i;
  }
  bclk_rate = wm8996->sysclk / bclk_divs[best];
  dev_dbg(component->dev, "Using BCLK_DIV %d for actual BCLK %dHz\n",
   bclk_divs[best], bclk_rate);

  snd_soc_component_update_bits(component, bclk_reg,
        WM8996_AIF1_BCLK_DIV_MASK, best);
 }
}

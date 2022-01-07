
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8995_priv {int* sysclk; int* mclk; int* aifclk; TYPE_1__* fll; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int out; } ;


 int EINVAL ;
 int WM8995_AIF1CLK_DIV ;
 int WM8995_AIF1CLK_DIV_MASK ;
 int WM8995_AIF1CLK_SRC_MASK ;
 scalar_t__ WM8995_AIF1_CLOCKING_1 ;




 int dev_dbg (int ,char*,int,int) ;
 struct wm8995_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,scalar_t__,int,int) ;

__attribute__((used)) static int configure_aif_clock(struct snd_soc_component *component, int aif)
{
 struct wm8995_priv *wm8995;
 int rate;
 int reg1 = 0;
 int offset;

 wm8995 = snd_soc_component_get_drvdata(component);

 if (aif)
  offset = 4;
 else
  offset = 0;

 switch (wm8995->sysclk[aif]) {
 case 129:
  rate = wm8995->mclk[0];
  break;
 case 128:
  reg1 |= 0x8;
  rate = wm8995->mclk[1];
  break;
 case 131:
  reg1 |= 0x10;
  rate = wm8995->fll[0].out;
  break;
 case 130:
  reg1 |= 0x18;
  rate = wm8995->fll[1].out;
  break;
 default:
  return -EINVAL;
 }

 if (rate >= 13500000) {
  rate /= 2;
  reg1 |= WM8995_AIF1CLK_DIV;

  dev_dbg(component->dev, "Dividing AIF%d clock to %dHz\n",
   aif + 1, rate);
 }

 wm8995->aifclk[aif] = rate;

 snd_soc_component_update_bits(component, WM8995_AIF1_CLOCKING_1 + offset,
       WM8995_AIF1CLK_SRC_MASK | WM8995_AIF1CLK_DIV_MASK,
       reg1);
 return 0;
}

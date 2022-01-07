
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8580_priv {unsigned int* sysclk; } ;
struct snd_soc_dai {TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int id; } ;


 int EINVAL ;
 int WARN (int,char*) ;
 int WM8580_CLKSEL ;






 int dev_err (int ,char*,int) ;
 struct wm8580_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8580_set_sysclk(struct snd_soc_dai *dai, int clk_id,
        unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8580_priv *wm8580 = snd_soc_component_get_drvdata(component);
 int ret, sel, sel_mask, sel_shift;

 switch (dai->driver->id) {
 case 129:
  sel_mask = 0x3;
  sel_shift = 0;
  break;

 case 128:
  sel_mask = 0xc;
  sel_shift = 2;
  break;

 default:
  WARN(1, "Unknown DAI driver ID\n");
  return -EINVAL;
 }

 switch (clk_id) {
 case 133:
  if (dai->driver->id != 128)
   return -EINVAL;
  sel = 0 << sel_shift;
  break;
 case 131:
  sel = 1 << sel_shift;
  break;
 case 130:
  sel = 2 << sel_shift;
  break;
 case 132:
  sel = 3 << sel_shift;
  break;
 default:
  dev_err(component->dev, "Unknown clock %d\n", clk_id);
  return -EINVAL;
 }


 wm8580->sysclk[dai->driver->id] = freq;

 ret = snd_soc_component_update_bits(component, WM8580_CLKSEL, sel_mask, sel);
 if (ret < 0)
  return ret;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8776_priv {int* sysclk; } ;
struct snd_soc_dai {TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int WM8776_ADCIFCTRL ;
 int WM8776_DACIFCTRL ;


 int WM8776_MSTRCTRL ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int,...) ;
 int* mclk_ratios ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct wm8776_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;

__attribute__((used)) static int wm8776_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wm8776_priv *wm8776 = snd_soc_component_get_drvdata(component);
 int iface_reg, iface;
 int ratio_shift, master;
 int i;

 switch (dai->driver->id) {
 case 128:
  iface_reg = WM8776_DACIFCTRL;
  master = 0x80;
  ratio_shift = 4;
  break;
 case 129:
  iface_reg = WM8776_ADCIFCTRL;
  master = 0x100;
  ratio_shift = 0;
  break;
 default:
  return -EINVAL;
 }


 switch (params_width(params)) {
 case 16:
  iface = 0;
  break;
 case 20:
  iface = 0x10;
  break;
 case 24:
  iface = 0x20;
  break;
 case 32:
  iface = 0x30;
  break;
 default:
  dev_err(component->dev, "Unsupported sample size: %i\n",
   params_width(params));
  return -EINVAL;
 }


 if (snd_soc_component_read32(component, WM8776_MSTRCTRL) & master) {
  for (i = 0; i < ARRAY_SIZE(mclk_ratios); i++) {
   if (wm8776->sysclk[dai->driver->id] / params_rate(params)
       == mclk_ratios[i])
    break;
  }

  if (i == ARRAY_SIZE(mclk_ratios)) {
   dev_err(component->dev,
    "Unable to configure MCLK ratio %d/%d\n",
    wm8776->sysclk[dai->driver->id], params_rate(params));
   return -EINVAL;
  }

  dev_dbg(component->dev, "MCLK is %dfs\n", mclk_ratios[i]);

  snd_soc_component_update_bits(component, WM8776_MSTRCTRL,
        0x7 << ratio_shift, i << ratio_shift);
 } else {
  dev_dbg(component->dev, "DAI in slave mode\n");
 }

 snd_soc_component_update_bits(component, iface_reg, 0x30, iface);

 return 0;
}

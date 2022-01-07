
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8741_priv {int sysclk; TYPE_1__* sysclk_constraints; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int count; int* list; } ;


 int EINVAL ;
 int WM8741_FORMAT_CONTROL ;
 int WM8741_IWL_MASK ;
 int WM8741_MODE_CONTROL_1 ;
 int WM8741_OSR_MASK ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*,...) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct wm8741_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int wm8741_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wm8741_priv *wm8741 = snd_soc_component_get_drvdata(component);
 unsigned int iface, mode;
 int i;




 if (!wm8741->sysclk) {
  dev_err(component->dev,
   "No MCLK configured, call set_sysclk() on init or in hw_params\n");
  return -EINVAL;
 }


 for (i = 0; i < wm8741->sysclk_constraints->count; i++) {
  if (wm8741->sysclk_constraints->list[i] == params_rate(params))
   break;
 }

 if (i == wm8741->sysclk_constraints->count) {
  dev_err(component->dev, "LRCLK %d unsupported with MCLK %d\n",
   params_rate(params), wm8741->sysclk);
  return -EINVAL;
 }


 switch (params_width(params)) {
 case 16:
  iface = 0x0;
  break;
 case 20:
  iface = 0x1;
  break;
 case 24:
  iface = 0x2;
  break;
 case 32:
  iface = 0x3;
  break;
 default:
  dev_dbg(component->dev, "wm8741_hw_params:    Unsupported bit size param = %d",
   params_width(params));
  return -EINVAL;
 }


 if (params_rate(params) > 96000)
  mode = 0x40;
 else if (params_rate(params) > 48000)
  mode = 0x20;
 else
  mode = 0x00;

 dev_dbg(component->dev, "wm8741_hw_params:    bit size param = %d, rate param = %d",
  params_width(params), params_rate(params));

 snd_soc_component_update_bits(component, WM8741_FORMAT_CONTROL, WM8741_IWL_MASK,
       iface);
 snd_soc_component_update_bits(component, WM8741_MODE_CONTROL_1, WM8741_OSR_MASK,
       mode);

 return 0;
}

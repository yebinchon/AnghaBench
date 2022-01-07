
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8994_priv {int* retune_mobile_cfg; scalar_t__* dac_rates; int * retune_mobile_texts; int num_retune_mobile_texts; struct wm8994* wm8994; } ;
struct wm8994_pdata {int num_retune_mobile_cfgs; TYPE_1__* retune_mobile_cfgs; } ;
struct wm8994 {struct wm8994_pdata pdata; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int* regs; scalar_t__ rate; int name; } ;


 int INT_MAX ;
 int WM8994_AIF1DAC1_EQ_ENA ;
 int WM8994_EQ_REGS ;
 int abs (scalar_t__) ;
 int dev_dbg (int ,char*,int,int ,scalar_t__,scalar_t__) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int* wm8994_retune_mobile_base ;

__attribute__((used)) static void wm8994_set_retune_mobile(struct snd_soc_component *component, int block)
{
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 struct wm8994 *control = wm8994->wm8994;
 struct wm8994_pdata *pdata = &control->pdata;
 int base = wm8994_retune_mobile_base[block];
 int iface, best, best_val, save, i, cfg;

 if (!pdata || !wm8994->num_retune_mobile_texts)
  return;

 switch (block) {
 case 0:
 case 1:
  iface = 0;
  break;
 case 2:
  iface = 1;
  break;
 default:
  return;
 }



 cfg = wm8994->retune_mobile_cfg[block];
 best = 0;
 best_val = INT_MAX;
 for (i = 0; i < pdata->num_retune_mobile_cfgs; i++) {
  if (strcmp(pdata->retune_mobile_cfgs[i].name,
      wm8994->retune_mobile_texts[cfg]) == 0 &&
      abs(pdata->retune_mobile_cfgs[i].rate
   - wm8994->dac_rates[iface]) < best_val) {
   best = i;
   best_val = abs(pdata->retune_mobile_cfgs[i].rate
           - wm8994->dac_rates[iface]);
  }
 }

 dev_dbg(component->dev, "ReTune Mobile %d %s/%dHz for %dHz sample rate\n",
  block,
  pdata->retune_mobile_cfgs[best].name,
  pdata->retune_mobile_cfgs[best].rate,
  wm8994->dac_rates[iface]);




 save = snd_soc_component_read32(component, base);
 save &= WM8994_AIF1DAC1_EQ_ENA;

 for (i = 0; i < WM8994_EQ_REGS; i++)
  snd_soc_component_update_bits(component, base + i, 0xffff,
    pdata->retune_mobile_cfgs[best].regs[i]);

 snd_soc_component_update_bits(component, base, WM8994_AIF1DAC1_EQ_ENA, save);
}

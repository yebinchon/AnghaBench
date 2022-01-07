
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8996_pdata {int num_retune_mobile_cfgs; TYPE_1__* retune_mobile_cfgs; } ;
struct wm8996_priv {int* retune_mobile_cfg; scalar_t__* rx_rate; int * retune_mobile_texts; int num_retune_mobile_texts; struct wm8996_pdata pdata; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int* regs; scalar_t__ rate; int name; } ;


 int ARRAY_SIZE (int*) ;
 int INT_MAX ;
 int WM8996_DSP1RX_EQ_ENA ;
 int WM8996_DSP1RX_SRC ;
 int WM8996_DSP1_RX_EQ_GAINS_1 ;
 int WM8996_DSP1_RX_EQ_GAINS_2 ;
 int WM8996_DSP2RX_SRC ;
 int WM8996_POWER_MANAGEMENT_8 ;
 int abs (scalar_t__) ;
 int dev_dbg (int ,char*,int,int ,scalar_t__,scalar_t__) ;
 struct wm8996_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void wm8996_set_retune_mobile(struct snd_soc_component *component, int block)
{
 struct wm8996_priv *wm8996 = snd_soc_component_get_drvdata(component);
 struct wm8996_pdata *pdata = &wm8996->pdata;
 int base, best, best_val, save, i, cfg, iface;

 if (!wm8996->num_retune_mobile_texts)
  return;

 switch (block) {
 case 0:
  base = WM8996_DSP1_RX_EQ_GAINS_1;
  if (snd_soc_component_read32(component, WM8996_POWER_MANAGEMENT_8) &
      WM8996_DSP1RX_SRC)
   iface = 1;
  else
   iface = 0;
  break;
 case 1:
  base = WM8996_DSP1_RX_EQ_GAINS_2;
  if (snd_soc_component_read32(component, WM8996_POWER_MANAGEMENT_8) &
      WM8996_DSP2RX_SRC)
   iface = 1;
  else
   iface = 0;
  break;
 default:
  return;
 }



 cfg = wm8996->retune_mobile_cfg[block];
 best = 0;
 best_val = INT_MAX;
 for (i = 0; i < pdata->num_retune_mobile_cfgs; i++) {
  if (strcmp(pdata->retune_mobile_cfgs[i].name,
      wm8996->retune_mobile_texts[cfg]) == 0 &&
      abs(pdata->retune_mobile_cfgs[i].rate
   - wm8996->rx_rate[iface]) < best_val) {
   best = i;
   best_val = abs(pdata->retune_mobile_cfgs[i].rate
           - wm8996->rx_rate[iface]);
  }
 }

 dev_dbg(component->dev, "ReTune Mobile %d %s/%dHz for %dHz sample rate\n",
  block,
  pdata->retune_mobile_cfgs[best].name,
  pdata->retune_mobile_cfgs[best].rate,
  wm8996->rx_rate[iface]);




 save = snd_soc_component_read32(component, base);
 save &= WM8996_DSP1RX_EQ_ENA;

 for (i = 0; i < ARRAY_SIZE(pdata->retune_mobile_cfgs[best].regs); i++)
  snd_soc_component_update_bits(component, base + i, 0xffff,
        pdata->retune_mobile_cfgs[best].regs[i]);

 snd_soc_component_update_bits(component, base, WM8996_DSP1RX_EQ_ENA, save);
}

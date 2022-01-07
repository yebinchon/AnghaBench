
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8994_priv {size_t enh_eq_cfg; int enh_eq; struct wm8994* wm8994; } ;
struct TYPE_2__ {struct wm8958_enh_eq_cfg* enh_eq_cfgs; scalar_t__ num_enh_eq_cfgs; } ;
struct wm8994 {TYPE_1__ pdata; } ;
struct wm8958_enh_eq_cfg {int * regs; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int WM8958_DSP2_CONFIG ;
 int WM8958_DSP2_ENA ;
 int WM8958_DSP2_EXECCONTROL ;
 int WM8958_DSP2_PROGRAM ;
 int WM8958_DSP2_RUNR ;
 int WM8958_MBC_ENA ;
 int WM8958_MBC_SEL_MASK ;
 int WM8958_MBC_SEL_SHIFT ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int,int ) ;
 int wm8958_dsp2_fw (struct snd_soc_component*,char*,int ,int) ;

__attribute__((used)) static void wm8958_dsp_start_enh_eq(struct snd_soc_component *component, int path)
{
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 struct wm8994 *control = wm8994->wm8994;
 int i;

 wm8958_dsp2_fw(component, "ENH_EQ", wm8994->enh_eq, 0);

 snd_soc_component_update_bits(component, WM8958_DSP2_PROGRAM,
       WM8958_DSP2_ENA, WM8958_DSP2_ENA);


 if (control->pdata.num_enh_eq_cfgs) {
  struct wm8958_enh_eq_cfg *cfg
   = &control->pdata.enh_eq_cfgs[wm8994->enh_eq_cfg];

  for (i = 0; i < ARRAY_SIZE(cfg->regs); i++)
   snd_soc_component_write(component, i + 0x2200,
          cfg->regs[i]);
 }


 snd_soc_component_write(component, WM8958_DSP2_EXECCONTROL,
        WM8958_DSP2_RUNR);


 snd_soc_component_update_bits(component, WM8958_DSP2_CONFIG,
       WM8958_MBC_SEL_MASK | WM8958_MBC_ENA,
       path << WM8958_MBC_SEL_SHIFT | WM8958_MBC_ENA);
}

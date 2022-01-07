
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8994_priv {size_t mbc_cfg; scalar_t__ mbc; struct wm8994* wm8994; } ;
struct TYPE_2__ {struct wm8958_mbc_cfg* mbc_cfgs; scalar_t__ num_mbc_cfgs; } ;
struct wm8994 {TYPE_1__ pdata; } ;
struct wm8958_mbc_cfg {int * cutoff_regs; int * coeff_regs; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int WM8958_DSP2_CONFIG ;
 int WM8958_DSP2_ENA ;
 scalar_t__ WM8958_DSP2_EXECCONTROL ;
 int WM8958_DSP2_PROGRAM ;
 int WM8958_DSP2_RUNR ;
 scalar_t__ WM8958_MBC_BAND_1_K_1 ;
 scalar_t__ WM8958_MBC_BAND_2_LOWER_CUTOFF_C1_1 ;
 int WM8958_MBC_ENA ;
 int WM8958_MBC_SEL_MASK ;
 int WM8958_MBC_SEL_SHIFT ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int ) ;
 int wm8958_dsp2_fw (struct snd_soc_component*,char*,scalar_t__,int) ;

__attribute__((used)) static void wm8958_dsp_start_mbc(struct snd_soc_component *component, int path)
{
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 struct wm8994 *control = wm8994->wm8994;
 int i;


 if (snd_soc_component_read32(component, WM8958_DSP2_PROGRAM) & WM8958_DSP2_ENA)
  return;


 if (wm8994->mbc)
  wm8958_dsp2_fw(component, "MBC", wm8994->mbc, 0);

 snd_soc_component_update_bits(component, WM8958_DSP2_PROGRAM,
       WM8958_DSP2_ENA, WM8958_DSP2_ENA);


 if (control->pdata.num_mbc_cfgs) {
  struct wm8958_mbc_cfg *cfg
   = &control->pdata.mbc_cfgs[wm8994->mbc_cfg];

  for (i = 0; i < ARRAY_SIZE(cfg->coeff_regs); i++)
   snd_soc_component_write(component, i + WM8958_MBC_BAND_1_K_1,
          cfg->coeff_regs[i]);

  for (i = 0; i < ARRAY_SIZE(cfg->cutoff_regs); i++)
   snd_soc_component_write(component,
          i + WM8958_MBC_BAND_2_LOWER_CUTOFF_C1_1,
          cfg->cutoff_regs[i]);
 }


 snd_soc_component_write(component, WM8958_DSP2_EXECCONTROL,
        WM8958_DSP2_RUNR);


 snd_soc_component_update_bits(component, WM8958_DSP2_CONFIG,
       WM8958_MBC_ENA |
       WM8958_MBC_SEL_MASK,
       path << WM8958_MBC_SEL_SHIFT |
       WM8958_MBC_ENA);
}

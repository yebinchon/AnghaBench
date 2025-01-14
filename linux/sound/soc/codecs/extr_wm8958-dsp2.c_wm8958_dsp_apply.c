
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {int dsp_active; scalar_t__* mbc_ena; scalar_t__* hpf2_ena; scalar_t__* hpf1_ena; scalar_t__* vss_ena; scalar_t__* enh_eq_ena; } ;
struct snd_soc_component {int dev; } ;


 int WARN (int,char*,int) ;
 int WM8958_DSP2CLK_ENA ;
 int WM8958_DSP2CLK_SRC ;
 int WM8958_DSP2CLK_SRC_SHIFT ;
 int WM8958_DSP2_CONFIG ;
 int WM8958_DSP2_ENA ;
 int WM8958_DSP2_EXECCONTROL ;
 int WM8958_DSP2_PROGRAM ;
 int WM8958_DSP2_STOP ;
 int WM8958_MBC_ENA ;
 int WM8994_AIF1CLK_ENA_MASK ;
 int WM8994_AIF1DAC1L_ENA ;
 int WM8994_AIF1DAC1R_ENA ;
 int WM8994_AIF1DAC2L_ENA ;
 int WM8994_AIF1DAC2R_ENA ;
 int WM8994_AIF1_CLOCKING_1 ;
 int WM8994_AIF2CLK_ENA_MASK ;
 int WM8994_AIF2DACL_ENA ;
 int WM8994_AIF2DACR_ENA ;
 int WM8994_AIF2_CLOCKING_1 ;
 int WM8994_CLOCKING_1 ;
 int WM8994_POWER_MANAGEMENT_5 ;
 int dev_dbg (int ,char*,...) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 int wm8958_dsp_start_enh_eq (struct snd_soc_component*,int) ;
 int wm8958_dsp_start_mbc (struct snd_soc_component*,int) ;
 int wm8958_dsp_start_vss (struct snd_soc_component*,int) ;

__attribute__((used)) static void wm8958_dsp_apply(struct snd_soc_component *component, int path, int start)
{
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 int pwr_reg = snd_soc_component_read32(component, WM8994_POWER_MANAGEMENT_5);
 int ena, reg, aif;

 switch (path) {
 case 0:
  pwr_reg &= (WM8994_AIF1DAC1L_ENA | WM8994_AIF1DAC1R_ENA);
  aif = 0;
  break;
 case 1:
  pwr_reg &= (WM8994_AIF1DAC2L_ENA | WM8994_AIF1DAC2R_ENA);
  aif = 0;
  break;
 case 2:
  pwr_reg &= (WM8994_AIF2DACL_ENA | WM8994_AIF2DACR_ENA);
  aif = 1;
  break;
 default:
  WARN(1, "Invalid path %d\n", path);
  return;
 }


 ena = wm8994->mbc_ena[path] || wm8994->vss_ena[path] ||
  wm8994->hpf1_ena[path] || wm8994->hpf2_ena[path] ||
  wm8994->enh_eq_ena[path];
 if (!pwr_reg)
  ena = 0;

 reg = snd_soc_component_read32(component, WM8958_DSP2_PROGRAM);

 dev_dbg(component->dev, "DSP path %d %d startup: %d, power: %x, DSP: %x\n",
  path, wm8994->dsp_active, start, pwr_reg, reg);

 if (start && ena) {

  if (reg & WM8958_DSP2_ENA)
   return;


  if (!(snd_soc_component_read32(component, WM8994_AIF1_CLOCKING_1)
        & WM8994_AIF1CLK_ENA_MASK) &&
      !(snd_soc_component_read32(component, WM8994_AIF2_CLOCKING_1)
        & WM8994_AIF2CLK_ENA_MASK))
   return;


  snd_soc_component_update_bits(component, WM8994_CLOCKING_1,
        WM8958_DSP2CLK_SRC | WM8958_DSP2CLK_ENA,
        aif << WM8958_DSP2CLK_SRC_SHIFT |
        WM8958_DSP2CLK_ENA);

  if (wm8994->enh_eq_ena[path])
   wm8958_dsp_start_enh_eq(component, path);
  else if (wm8994->vss_ena[path] || wm8994->hpf1_ena[path] ||
      wm8994->hpf2_ena[path])
   wm8958_dsp_start_vss(component, path);
  else if (wm8994->mbc_ena[path])
   wm8958_dsp_start_mbc(component, path);

  wm8994->dsp_active = path;

  dev_dbg(component->dev, "DSP running in path %d\n", path);
 }

 if (!start && wm8994->dsp_active == path) {

  if (!(reg & WM8958_DSP2_ENA))
   return;

  snd_soc_component_update_bits(component, WM8958_DSP2_CONFIG,
        WM8958_MBC_ENA, 0);
  snd_soc_component_write(component, WM8958_DSP2_EXECCONTROL,
         WM8958_DSP2_STOP);
  snd_soc_component_update_bits(component, WM8958_DSP2_PROGRAM,
        WM8958_DSP2_ENA, 0);
  snd_soc_component_update_bits(component, WM8994_CLOCKING_1,
        WM8958_DSP2CLK_ENA, 0);

  wm8994->dsp_active = -1;

  dev_dbg(component->dev, "DSP stopped\n");
 }
}

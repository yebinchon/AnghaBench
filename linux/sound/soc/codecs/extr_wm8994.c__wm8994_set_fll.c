
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm8994_priv {int* aifdiv; int * aifclk; TYPE_1__* fll; int * fll_locked; scalar_t__ fll_locked_irq; scalar_t__ fll_byp; struct wm8994* wm8994; } ;
struct wm8994 {int type; int revision; } ;
struct snd_soc_component {int dev; } ;
struct fll_div {int outdiv; int fll_fratio; int k; int n; int lambda; int clk_ref_div; } ;
struct TYPE_2__ {int src; unsigned int in; unsigned int out; } ;


 int EBUSY ;
 int EINVAL ;

 int WM8958_FLL1_BYP ;
 int WM8958_FLL1_EFS_1 ;
 int WM8958_FLL1_EFS_2 ;
 int WM8958_FLL1_EFS_ENA ;
 int WM8958_FLL1_LAMBDA_MASK ;

 int WM8994_AIF1CLK_ENA ;
 int WM8994_AIF1CLK_RATE_MASK ;
 int WM8994_AIF1CLK_SRC_MASK ;
 int WM8994_AIF1_CLOCKING_1 ;
 int WM8994_AIF1_RATE ;
 int WM8994_AIF2CLK_RATE_MASK ;
 int WM8994_AIF2_CLOCKING_1 ;
 int WM8994_AIF2_RATE ;
 int WM8994_CLOCKING_1 ;

 int WM8994_FLL1_CONTROL_1 ;
 int WM8994_FLL1_CONTROL_2 ;
 int WM8994_FLL1_CONTROL_3 ;
 int WM8994_FLL1_CONTROL_4 ;
 int WM8994_FLL1_CONTROL_5 ;
 int WM8994_FLL1_ENA ;
 int WM8994_FLL1_FRAC ;
 int WM8994_FLL1_FRATIO_MASK ;
 int WM8994_FLL1_FRATIO_SHIFT ;
 int WM8994_FLL1_FRC_NCO ;
 int WM8994_FLL1_FRC_NCO_SHIFT ;
 int WM8994_FLL1_K_MASK ;
 int WM8994_FLL1_N_MASK ;
 int WM8994_FLL1_N_SHIFT ;
 int WM8994_FLL1_OSC_ENA ;
 int WM8994_FLL1_OUTDIV_MASK ;
 int WM8994_FLL1_OUTDIV_SHIFT ;
 int WM8994_FLL1_REFCLK_DIV_MASK ;
 int WM8994_FLL1_REFCLK_DIV_SHIFT ;
 int WM8994_FLL1_REFCLK_SRC_MASK ;






 int WM8994_SYSCLK_SRC ;
 int active_dereference (struct snd_soc_component*) ;
 int active_reference (struct snd_soc_component*) ;
 int configure_clock (struct snd_soc_component*) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int max (int ,int ) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;
 int try_wait_for_completion (int *) ;
 int vmid_dereference (struct snd_soc_component*) ;
 int vmid_reference (struct snd_soc_component*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int wm8994_get_fll_config (struct wm8994*,struct fll_div*,unsigned int,unsigned int) ;

__attribute__((used)) static int _wm8994_set_fll(struct snd_soc_component *component, int id, int src,
     unsigned int freq_in, unsigned int freq_out)
{
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 struct wm8994 *control = wm8994->wm8994;
 int reg_offset, ret;
 struct fll_div fll;
 u16 reg, clk1, aif_reg, aif_src;
 unsigned long timeout;
 bool was_enabled;

 switch (id) {
 case 134:
  reg_offset = 0;
  id = 0;
  aif_src = 0x10;
  break;
 case 133:
  reg_offset = 0x20;
  id = 1;
  aif_src = 0x18;
  break;
 default:
  return -EINVAL;
 }

 reg = snd_soc_component_read32(component, WM8994_FLL1_CONTROL_1 + reg_offset);
 was_enabled = reg & WM8994_FLL1_ENA;

 switch (src) {
 case 0:

  if (freq_out)
   return -EINVAL;
  src = wm8994->fll[id].src;
  break;
 case 129:
 case 128:
 case 130:
 case 132:
  break;
 case 131:
  freq_in = 12000000;
  freq_out = 12000000;
  break;
 default:
  return -EINVAL;
 }


 if (wm8994->fll[id].src == src &&
     wm8994->fll[id].in == freq_in && wm8994->fll[id].out == freq_out)
  return 0;





 if (freq_out)
  ret = wm8994_get_fll_config(control, &fll, freq_in, freq_out);
 else
  ret = wm8994_get_fll_config(control, &fll, wm8994->fll[id].in,
         wm8994->fll[id].out);
 if (ret < 0)
  return ret;


 clk1 = snd_soc_component_read32(component, WM8994_CLOCKING_1);
 if (clk1 & WM8994_SYSCLK_SRC)
  aif_reg = WM8994_AIF2_CLOCKING_1;
 else
  aif_reg = WM8994_AIF1_CLOCKING_1;
 reg = snd_soc_component_read32(component, aif_reg);

 if ((reg & WM8994_AIF1CLK_ENA) &&
     (reg & WM8994_AIF1CLK_SRC_MASK) == aif_src) {
  dev_err(component->dev, "FLL%d is currently providing SYSCLK\n",
   id + 1);
  return -EBUSY;
 }


 snd_soc_component_update_bits(component, WM8994_FLL1_CONTROL_1 + reg_offset,
       WM8994_FLL1_ENA, 0);

 if (wm8994->fll_byp && src == 132 &&
     freq_in == freq_out && freq_out) {
  dev_dbg(component->dev, "Bypassing FLL%d\n", id + 1);
  snd_soc_component_update_bits(component, WM8994_FLL1_CONTROL_5 + reg_offset,
        WM8958_FLL1_BYP, WM8958_FLL1_BYP);
  goto out;
 }

 reg = (fll.outdiv << WM8994_FLL1_OUTDIV_SHIFT) |
  (fll.fll_fratio << WM8994_FLL1_FRATIO_SHIFT);
 snd_soc_component_update_bits(component, WM8994_FLL1_CONTROL_2 + reg_offset,
       WM8994_FLL1_OUTDIV_MASK |
       WM8994_FLL1_FRATIO_MASK, reg);

 snd_soc_component_update_bits(component, WM8994_FLL1_CONTROL_3 + reg_offset,
       WM8994_FLL1_K_MASK, fll.k);

 snd_soc_component_update_bits(component, WM8994_FLL1_CONTROL_4 + reg_offset,
       WM8994_FLL1_N_MASK,
       fll.n << WM8994_FLL1_N_SHIFT);

 if (fll.lambda) {
  snd_soc_component_update_bits(component, WM8958_FLL1_EFS_1 + reg_offset,
        WM8958_FLL1_LAMBDA_MASK,
        fll.lambda);
  snd_soc_component_update_bits(component, WM8958_FLL1_EFS_2 + reg_offset,
        WM8958_FLL1_EFS_ENA, WM8958_FLL1_EFS_ENA);
 } else {
  snd_soc_component_update_bits(component, WM8958_FLL1_EFS_2 + reg_offset,
        WM8958_FLL1_EFS_ENA, 0);
 }

 snd_soc_component_update_bits(component, WM8994_FLL1_CONTROL_5 + reg_offset,
       WM8994_FLL1_FRC_NCO | WM8958_FLL1_BYP |
       WM8994_FLL1_REFCLK_DIV_MASK |
       WM8994_FLL1_REFCLK_SRC_MASK,
       ((src == 131)
        << WM8994_FLL1_FRC_NCO_SHIFT) |
       (fll.clk_ref_div << WM8994_FLL1_REFCLK_DIV_SHIFT) |
       (src - 1));


 try_wait_for_completion(&wm8994->fll_locked[id]);


 if (freq_out) {

  if (!was_enabled) {
   active_reference(component);

   switch (control->type) {
   case 135:
    vmid_reference(component);
    break;
   case 136:
    if (control->revision < 1)
     vmid_reference(component);
    break;
   default:
    break;
   }
  }

  reg = WM8994_FLL1_ENA;

  if (fll.k)
   reg |= WM8994_FLL1_FRAC;
  if (src == 131)
   reg |= WM8994_FLL1_OSC_ENA;

  snd_soc_component_update_bits(component, WM8994_FLL1_CONTROL_1 + reg_offset,
        WM8994_FLL1_ENA | WM8994_FLL1_OSC_ENA |
        WM8994_FLL1_FRAC, reg);

  if (wm8994->fll_locked_irq) {
   timeout = wait_for_completion_timeout(&wm8994->fll_locked[id],
             msecs_to_jiffies(10));
   if (timeout == 0)
    dev_warn(component->dev,
      "Timed out waiting for FLL lock\n");
  } else {
   msleep(5);
  }
 } else {
  if (was_enabled) {
   switch (control->type) {
   case 135:
    vmid_dereference(component);
    break;
   case 136:
    if (control->revision < 1)
     vmid_dereference(component);
    break;
   default:
    break;
   }

   active_dereference(component);
  }
 }

out:
 wm8994->fll[id].in = freq_in;
 wm8994->fll[id].out = freq_out;
 wm8994->fll[id].src = src;

 configure_clock(component);





 if (max(wm8994->aifclk[0], wm8994->aifclk[1]) < 50000) {
  dev_dbg(component->dev, "Configuring AIFs for 128fs\n");

  wm8994->aifdiv[0] = snd_soc_component_read32(component, WM8994_AIF1_RATE)
   & WM8994_AIF1CLK_RATE_MASK;
  wm8994->aifdiv[1] = snd_soc_component_read32(component, WM8994_AIF2_RATE)
   & WM8994_AIF1CLK_RATE_MASK;

  snd_soc_component_update_bits(component, WM8994_AIF1_RATE,
        WM8994_AIF1CLK_RATE_MASK, 0x1);
  snd_soc_component_update_bits(component, WM8994_AIF2_RATE,
        WM8994_AIF2CLK_RATE_MASK, 0x1);
 } else if (wm8994->aifdiv[0]) {
  snd_soc_component_update_bits(component, WM8994_AIF1_RATE,
        WM8994_AIF1CLK_RATE_MASK,
        wm8994->aifdiv[0]);
  snd_soc_component_update_bits(component, WM8994_AIF2_RATE,
        WM8994_AIF2CLK_RATE_MASK,
        wm8994->aifdiv[1]);

  wm8994->aifdiv[0] = 0;
  wm8994->aifdiv[1] = 0;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm9081_priv {unsigned int fll_fref; unsigned int fll_fout; } ;
struct snd_soc_component {int dev; } ;
struct _fll_div {int k; int fll_outdiv; int fll_fratio; int n; int fll_clk_ref_div; } ;


 int EINVAL ;
 int WM9081_CLK_SYS_ENA ;
 int WM9081_CLOCK_CONTROL_3 ;
 int WM9081_FLL_CLK_REF_DIV_MASK ;
 int WM9081_FLL_CLK_REF_DIV_SHIFT ;
 int WM9081_FLL_CLK_SRC_MASK ;
 int WM9081_FLL_CONTROL_1 ;
 int WM9081_FLL_CONTROL_2 ;
 int WM9081_FLL_CONTROL_3 ;
 int WM9081_FLL_CONTROL_4 ;
 int WM9081_FLL_CONTROL_5 ;
 int WM9081_FLL_ENA ;
 int WM9081_FLL_FRAC_MASK ;
 int WM9081_FLL_FRATIO_SHIFT ;
 int WM9081_FLL_GAIN_MASK ;
 int WM9081_FLL_N_MASK ;
 int WM9081_FLL_N_SHIFT ;
 int WM9081_FLL_OUTDIV_SHIFT ;

 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int fll_factors (struct _fll_div*,unsigned int,unsigned int) ;
 struct wm9081_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm9081_set_fll(struct snd_soc_component *component, int fll_id,
     unsigned int Fref, unsigned int Fout)
{
 struct wm9081_priv *wm9081 = snd_soc_component_get_drvdata(component);
 u16 reg1, reg4, reg5;
 struct _fll_div fll_div;
 int ret;
 int clk_sys_reg;


 if (Fref == wm9081->fll_fref && Fout == wm9081->fll_fout)
  return 0;


 if (Fout == 0) {
  dev_dbg(component->dev, "FLL disabled\n");
  wm9081->fll_fref = 0;
  wm9081->fll_fout = 0;

  return 0;
 }

 ret = fll_factors(&fll_div, Fref, Fout);
 if (ret != 0)
  return ret;

 reg5 = snd_soc_component_read32(component, WM9081_FLL_CONTROL_5);
 reg5 &= ~WM9081_FLL_CLK_SRC_MASK;

 switch (fll_id) {
 case 128:
  reg5 |= 0x1;
  break;

 default:
  dev_err(component->dev, "Unknown FLL ID %d\n", fll_id);
  return -EINVAL;
 }


 clk_sys_reg = snd_soc_component_read32(component, WM9081_CLOCK_CONTROL_3);
 if (clk_sys_reg & WM9081_CLK_SYS_ENA)
  snd_soc_component_write(component, WM9081_CLOCK_CONTROL_3,
        clk_sys_reg & ~WM9081_CLK_SYS_ENA);



 reg1 = snd_soc_component_read32(component, WM9081_FLL_CONTROL_1);
 reg1 &= ~WM9081_FLL_ENA;
 snd_soc_component_write(component, WM9081_FLL_CONTROL_1, reg1);


 if (fll_div.k)
  reg1 |= WM9081_FLL_FRAC_MASK;
 else
  reg1 &= ~WM9081_FLL_FRAC_MASK;
 snd_soc_component_write(component, WM9081_FLL_CONTROL_1, reg1);

 snd_soc_component_write(component, WM9081_FLL_CONTROL_2,
       (fll_div.fll_outdiv << WM9081_FLL_OUTDIV_SHIFT) |
       (fll_div.fll_fratio << WM9081_FLL_FRATIO_SHIFT));
 snd_soc_component_write(component, WM9081_FLL_CONTROL_3, fll_div.k);

 reg4 = snd_soc_component_read32(component, WM9081_FLL_CONTROL_4);
 reg4 &= ~WM9081_FLL_N_MASK;
 reg4 |= fll_div.n << WM9081_FLL_N_SHIFT;
 snd_soc_component_write(component, WM9081_FLL_CONTROL_4, reg4);

 reg5 &= ~WM9081_FLL_CLK_REF_DIV_MASK;
 reg5 |= fll_div.fll_clk_ref_div << WM9081_FLL_CLK_REF_DIV_SHIFT;
 snd_soc_component_write(component, WM9081_FLL_CONTROL_5, reg5);


 snd_soc_component_update_bits(component, WM9081_FLL_CONTROL_4,
       WM9081_FLL_GAIN_MASK, 0);


 snd_soc_component_write(component, WM9081_FLL_CONTROL_1, reg1 | WM9081_FLL_ENA);


 if (clk_sys_reg & WM9081_CLK_SYS_ENA)
  snd_soc_component_write(component, WM9081_CLOCK_CONTROL_3, clk_sys_reg);

 dev_dbg(component->dev, "FLL enabled at %dHz->%dHz\n", Fref, Fout);

 wm9081->fll_fref = Fref;
 wm9081->fll_fout = Fout;

 return 0;
}

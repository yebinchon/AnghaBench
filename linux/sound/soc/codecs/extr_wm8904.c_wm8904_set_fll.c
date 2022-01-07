
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8904_priv {int fll_src; unsigned int fll_fref; unsigned int fll_fout; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct _fll_div {int fll_outdiv; int fll_fratio; int n; int fll_clk_ref_div; scalar_t__ k; } ;
typedef int fll_div ;


 int EINVAL ;
 int WM8904_CLK_SYS_ENA ;
 int WM8904_CLOCK_RATES_2 ;
 int WM8904_CONTROL_INTERFACE_TEST_1 ;

 int WM8904_FLL_CLK_REF_DIV_MASK ;
 int WM8904_FLL_CLK_REF_DIV_SHIFT ;
 int WM8904_FLL_CLK_REF_SRC_MASK ;
 int WM8904_FLL_CONTROL_1 ;
 int WM8904_FLL_CONTROL_2 ;
 int WM8904_FLL_CONTROL_3 ;
 int WM8904_FLL_CONTROL_4 ;
 int WM8904_FLL_CONTROL_5 ;
 int WM8904_FLL_ENA ;
 int WM8904_FLL_FRACN_ENA ;
 int WM8904_FLL_FRATIO_MASK ;
 int WM8904_FLL_FRATIO_SHIFT ;
 int WM8904_FLL_FRC_NCO ;



 int WM8904_FLL_NCO_TEST_1 ;
 int WM8904_FLL_N_MASK ;
 int WM8904_FLL_N_SHIFT ;
 int WM8904_FLL_OSC_ENA ;
 int WM8904_FLL_OUTDIV_MASK ;
 int WM8904_FLL_OUTDIV_SHIFT ;
 int WM8904_USER_KEY ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int fll_factors (struct _fll_div*,unsigned int,unsigned int) ;
 int memset (struct _fll_div*,int ,int) ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,scalar_t__) ;

__attribute__((used)) static int wm8904_set_fll(struct snd_soc_dai *dai, int fll_id, int source,
     unsigned int Fref, unsigned int Fout)
{
 struct snd_soc_component *component = dai->component;
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);
 struct _fll_div fll_div;
 int ret, val;
 int clock2, fll1;


 if (source == wm8904->fll_src && Fref == wm8904->fll_fref &&
     Fout == wm8904->fll_fout)
  return 0;

 clock2 = snd_soc_component_read32(component, WM8904_CLOCK_RATES_2);

 if (Fout == 0) {
  dev_dbg(component->dev, "FLL disabled\n");

  wm8904->fll_fref = 0;
  wm8904->fll_fout = 0;


  snd_soc_component_update_bits(component, WM8904_CLOCK_RATES_2,
        WM8904_CLK_SYS_ENA, 0);

  snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_1,
        WM8904_FLL_OSC_ENA | WM8904_FLL_ENA, 0);

  goto out;
 }


 switch (source) {
 case 128:
 case 129:
 case 131:
  ret = fll_factors(&fll_div, Fref, Fout);
  if (ret != 0)
   return ret;
  break;

 case 130:
  dev_dbg(component->dev, "Using free running FLL\n");

  Fout = 12000000;
  Fref = 12000000;

  memset(&fll_div, 0, sizeof(fll_div));
  fll_div.fll_outdiv = 3;
  break;

 default:
  dev_err(component->dev, "Unknown FLL ID %d\n", fll_id);
  return -EINVAL;
 }



 fll1 = snd_soc_component_read32(component, WM8904_FLL_CONTROL_1);
 snd_soc_component_update_bits(component, WM8904_CLOCK_RATES_2,
       WM8904_CLK_SYS_ENA, 0);
 snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_1,
       WM8904_FLL_OSC_ENA | WM8904_FLL_ENA, 0);


 snd_soc_component_update_bits(component, WM8904_CONTROL_INTERFACE_TEST_1,
       WM8904_USER_KEY, WM8904_USER_KEY);

 if (fll_id == 130) {
  val = WM8904_FLL_FRC_NCO;
 } else {
  val = 0;
 }

 snd_soc_component_update_bits(component, WM8904_FLL_NCO_TEST_1, WM8904_FLL_FRC_NCO,
       val);
 snd_soc_component_update_bits(component, WM8904_CONTROL_INTERFACE_TEST_1,
       WM8904_USER_KEY, 0);

 switch (fll_id) {
 case 128:
  snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_5,
        WM8904_FLL_CLK_REF_SRC_MASK, 0);
  break;

 case 129:
  snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_5,
        WM8904_FLL_CLK_REF_SRC_MASK, 1);
  break;

 case 131:
  snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_5,
        WM8904_FLL_CLK_REF_SRC_MASK, 2);
  break;
 }

 if (fll_div.k)
  val = WM8904_FLL_FRACN_ENA;
 else
  val = 0;
 snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_1,
       WM8904_FLL_FRACN_ENA, val);

 snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_2,
       WM8904_FLL_OUTDIV_MASK | WM8904_FLL_FRATIO_MASK,
       (fll_div.fll_outdiv << WM8904_FLL_OUTDIV_SHIFT) |
       (fll_div.fll_fratio << WM8904_FLL_FRATIO_SHIFT));

 snd_soc_component_write(component, WM8904_FLL_CONTROL_3, fll_div.k);

 snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_4, WM8904_FLL_N_MASK,
       fll_div.n << WM8904_FLL_N_SHIFT);

 snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_5,
       WM8904_FLL_CLK_REF_DIV_MASK,
       fll_div.fll_clk_ref_div
       << WM8904_FLL_CLK_REF_DIV_SHIFT);

 dev_dbg(component->dev, "FLL configured for %dHz->%dHz\n", Fref, Fout);

 wm8904->fll_fref = Fref;
 wm8904->fll_fout = Fout;
 wm8904->fll_src = source;


 snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_1,
       WM8904_FLL_OSC_ENA, fll1);
 snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_1,
       WM8904_FLL_ENA, fll1);

out:

 snd_soc_component_update_bits(component, WM8904_CLOCK_RATES_2,
       WM8904_CLK_SYS_ENA, clock2);

 return 0;
}

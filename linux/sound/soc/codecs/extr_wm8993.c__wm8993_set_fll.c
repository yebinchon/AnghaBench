
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8993_priv {unsigned int fll_fref; unsigned int fll_fout; int fll_src; int fll_lock; } ;
struct snd_soc_component {int dev; } ;
struct i2c_client {scalar_t__ irq; } ;
struct _fll_div {int k; int fll_outdiv; int fll_fratio; int n; int fll_clk_ref_div; } ;


 int EINVAL ;

 int WM8993_FLL_CLK_REF_DIV_MASK ;
 int WM8993_FLL_CLK_REF_DIV_SHIFT ;
 int WM8993_FLL_CLK_SRC_MASK ;
 int WM8993_FLL_CONTROL_1 ;
 int WM8993_FLL_CONTROL_2 ;
 int WM8993_FLL_CONTROL_3 ;
 int WM8993_FLL_CONTROL_4 ;
 int WM8993_FLL_CONTROL_5 ;
 int WM8993_FLL_ENA ;
 int WM8993_FLL_FRAC_MASK ;
 int WM8993_FLL_FRATIO_SHIFT ;


 int WM8993_FLL_N_MASK ;
 int WM8993_FLL_N_SHIFT ;
 int WM8993_FLL_OUTDIV_SHIFT ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int fll_factors (struct _fll_div*,unsigned int,unsigned int) ;
 unsigned int msecs_to_jiffies (int) ;
 struct wm8993_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct i2c_client* to_i2c_client (int ) ;
 int try_wait_for_completion (int *) ;
 unsigned int wait_for_completion_timeout (int *,unsigned int) ;

__attribute__((used)) static int _wm8993_set_fll(struct snd_soc_component *component, int fll_id, int source,
     unsigned int Fref, unsigned int Fout)
{
 struct wm8993_priv *wm8993 = snd_soc_component_get_drvdata(component);
 struct i2c_client *i2c = to_i2c_client(component->dev);
 u16 reg1, reg4, reg5;
 struct _fll_div fll_div;
 unsigned int timeout;
 int ret;


 if (Fref == wm8993->fll_fref && Fout == wm8993->fll_fout)
  return 0;


 if (Fout == 0) {
  dev_dbg(component->dev, "FLL disabled\n");
  wm8993->fll_fref = 0;
  wm8993->fll_fout = 0;

  reg1 = snd_soc_component_read32(component, WM8993_FLL_CONTROL_1);
  reg1 &= ~WM8993_FLL_ENA;
  snd_soc_component_write(component, WM8993_FLL_CONTROL_1, reg1);

  return 0;
 }

 ret = fll_factors(&fll_div, Fref, Fout);
 if (ret != 0)
  return ret;

 reg5 = snd_soc_component_read32(component, WM8993_FLL_CONTROL_5);
 reg5 &= ~WM8993_FLL_CLK_SRC_MASK;

 switch (fll_id) {
 case 128:
  break;

 case 129:
  reg5 |= 1;
  break;

 case 130:
  reg5 |= 2;
  break;

 default:
  dev_err(component->dev, "Unknown FLL ID %d\n", fll_id);
  return -EINVAL;
 }



 reg1 = snd_soc_component_read32(component, WM8993_FLL_CONTROL_1);
 reg1 &= ~WM8993_FLL_ENA;
 snd_soc_component_write(component, WM8993_FLL_CONTROL_1, reg1);


 if (fll_div.k)
  reg1 |= WM8993_FLL_FRAC_MASK;
 else
  reg1 &= ~WM8993_FLL_FRAC_MASK;
 snd_soc_component_write(component, WM8993_FLL_CONTROL_1, reg1);

 snd_soc_component_write(component, WM8993_FLL_CONTROL_2,
        (fll_div.fll_outdiv << WM8993_FLL_OUTDIV_SHIFT) |
        (fll_div.fll_fratio << WM8993_FLL_FRATIO_SHIFT));
 snd_soc_component_write(component, WM8993_FLL_CONTROL_3, fll_div.k);

 reg4 = snd_soc_component_read32(component, WM8993_FLL_CONTROL_4);
 reg4 &= ~WM8993_FLL_N_MASK;
 reg4 |= fll_div.n << WM8993_FLL_N_SHIFT;
 snd_soc_component_write(component, WM8993_FLL_CONTROL_4, reg4);

 reg5 &= ~WM8993_FLL_CLK_REF_DIV_MASK;
 reg5 |= fll_div.fll_clk_ref_div << WM8993_FLL_CLK_REF_DIV_SHIFT;
 snd_soc_component_write(component, WM8993_FLL_CONTROL_5, reg5);


 if (i2c->irq)
  timeout = msecs_to_jiffies(20);
 else if (Fref < 1000000)
  timeout = msecs_to_jiffies(3);
 else
  timeout = msecs_to_jiffies(1);

 try_wait_for_completion(&wm8993->fll_lock);


 snd_soc_component_write(component, WM8993_FLL_CONTROL_1, reg1 | WM8993_FLL_ENA);

 timeout = wait_for_completion_timeout(&wm8993->fll_lock, timeout);
 if (i2c->irq && !timeout)
  dev_warn(component->dev, "Timed out waiting for FLL\n");

 dev_dbg(component->dev, "FLL enabled at %dHz->%dHz\n", Fref, Fout);

 wm8993->fll_fref = Fref;
 wm8993->fll_fout = Fout;
 wm8993->fll_src = source;

 return 0;
}

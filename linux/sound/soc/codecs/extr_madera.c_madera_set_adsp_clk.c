
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int num; int base; int regmap; } ;
struct madera_priv {unsigned int* adsp_rate_cache; struct madera* madera; struct wm_adsp* adsp; } ;
struct madera {int dev; } ;


 unsigned int MADERA_DSP_RATE_MASK ;
 unsigned int MADERA_DSP_RATE_SHIFT ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int madera_spin_sysclk (struct madera_priv*) ;
 int madera_write_adsp_clk_setting (struct madera_priv*,struct wm_adsp*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

int madera_set_adsp_clk(struct madera_priv *priv, int dsp_num,
   unsigned int freq)
{
 struct wm_adsp *dsp = &priv->adsp[dsp_num];
 struct madera *madera = priv->madera;
 unsigned int cur, new;
 int ret;
 ret = regmap_read(dsp->regmap, dsp->base, &cur);
 if (ret) {
  dev_err(madera->dev,
   "Failed to read current DSP rate: %d\n", ret);
  return ret;
 }

 cur &= MADERA_DSP_RATE_MASK;

 new = priv->adsp_rate_cache[dsp->num - 1] << MADERA_DSP_RATE_SHIFT;

 if (new == cur) {
  dev_dbg(madera->dev, "DSP rate not changed\n");
  return madera_write_adsp_clk_setting(priv, dsp, freq);
 } else {
  dev_dbg(madera->dev, "DSP rate changed\n");


  madera_spin_sysclk(priv);
  ret = madera_write_adsp_clk_setting(priv, dsp, freq);
  madera_spin_sysclk(priv);
  return ret;
 }
}

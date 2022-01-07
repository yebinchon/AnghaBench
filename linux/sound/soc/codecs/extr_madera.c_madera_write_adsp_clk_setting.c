
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm_adsp {int num; int dev; scalar_t__ base; int regmap; } ;
struct madera_priv {unsigned int* adsp_rate_cache; TYPE_1__* madera; } ;
struct TYPE_2__ {int type; int dev; } ;




 unsigned int MADERA_DSP_CLK_SEL_MASK ;
 unsigned int MADERA_DSP_CLK_SEL_SHIFT ;
 scalar_t__ MADERA_DSP_CONFIG_1_OFFS ;
 scalar_t__ MADERA_DSP_CONFIG_2_OFFS ;
 unsigned int MADERA_DSP_RATE_MASK ;
 unsigned int MADERA_DSP_RATE_SHIFT ;

 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,int,int) ;
 int regmap_update_bits (int ,scalar_t__,unsigned int,unsigned int) ;
 int regmap_write (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static int madera_write_adsp_clk_setting(struct madera_priv *priv,
      struct wm_adsp *dsp,
      unsigned int freq)
{
 unsigned int val;
 unsigned int mask = MADERA_DSP_RATE_MASK;
 int ret;

 val = priv->adsp_rate_cache[dsp->num - 1] << MADERA_DSP_RATE_SHIFT;

 switch (priv->madera->type) {
 case 130:
 case 129:
 case 128:

  mask |= MADERA_DSP_CLK_SEL_MASK;
  val |= (freq << MADERA_DSP_CLK_SEL_SHIFT);
  break;
 default:

  dev_dbg(priv->madera->dev, "Set DSP frequency to 0x%x\n", freq);

  ret = regmap_write(dsp->regmap,
       dsp->base + MADERA_DSP_CONFIG_2_OFFS, freq);
  if (ret)
   goto err;
  break;
 }

 ret = regmap_update_bits(dsp->regmap,
     dsp->base + MADERA_DSP_CONFIG_1_OFFS,
     mask, val);
 if (ret)
  goto err;

 dev_dbg(priv->madera->dev, "Set DSP clocking to 0x%x\n", val);

 return 0;

err:
 dev_err(dsp->dev, "Failed to set DSP%d clock: %d\n", dsp->num, ret);

 return ret;
}

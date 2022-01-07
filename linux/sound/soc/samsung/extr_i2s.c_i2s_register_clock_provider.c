
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct samsung_i2s_variant_regs {int cdclkcon_off; int rclksrc_off; } ;
struct TYPE_4__ {int clk_num; int * clks; } ;
struct samsung_i2s_priv {int quirks; TYPE_2__ clk_data; int * clk_table; int lock; scalar_t__ addr; struct samsung_i2s_variant_regs* variant_regs; TYPE_1__* pdev; } ;
struct device {int of_node; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int ARRAY_SIZE (char const**) ;
 int CLK_GATE_SET_TO_DISABLE ;
 size_t CLK_I2S_CDCLK ;
 size_t CLK_I2S_RCLK_PSR ;
 size_t CLK_I2S_RCLK_SRC ;
 int CLK_SET_RATE_NO_REPARENT ;
 int CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ I2SMOD ;
 scalar_t__ I2SPSR ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PSR_PSREN ;
 int QUIRK_NO_MUXPSR ;
 char* __clk_get_name (struct clk*) ;
 struct clk* clk_get (struct device*,char const*) ;
 int clk_put (struct clk*) ;
 int clk_register_divider (struct device*,char const*,char const*,int,scalar_t__,int,int,int ,int *) ;
 int clk_register_gate (struct device*,char const*,char const*,int,scalar_t__,int ,int ,int *) ;
 int clk_register_mux (struct device*,char const*,char const**,int,int,scalar_t__,int ,int,int ,int *) ;
 int dev_err (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 char* devm_kasprintf (struct device*,int ,char*,int ,char const* const) ;
 int i2s_unregister_clocks (struct samsung_i2s_priv*) ;
 int of_clk_add_provider (int ,int ,TYPE_2__*) ;
 int of_clk_src_onecell_get ;
 int of_find_property (int ,char*,int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int i2s_register_clock_provider(struct samsung_i2s_priv *priv)
{

 const char * const i2s_clk_desc[] = { "cdclk", "rclk_src", "prescaler" };
 const char *clk_name[2] = { "i2s_opclk0", "i2s_opclk1" };
 const char *p_names[2] = { ((void*)0) };
 struct device *dev = &priv->pdev->dev;
 const struct samsung_i2s_variant_regs *reg_info = priv->variant_regs;
 const char *i2s_clk_name[ARRAY_SIZE(i2s_clk_desc)];
 struct clk *rclksrc;
 int ret, i;


 if (!of_find_property(dev->of_node, "#clock-cells", ((void*)0)))
  return 0;


 for (i = 0; i < ARRAY_SIZE(p_names); i++) {
  rclksrc = clk_get(dev, clk_name[i]);
  if (IS_ERR(rclksrc))
   continue;
  p_names[i] = __clk_get_name(rclksrc);
  clk_put(rclksrc);
 }

 for (i = 0; i < ARRAY_SIZE(i2s_clk_desc); i++) {
  i2s_clk_name[i] = devm_kasprintf(dev, GFP_KERNEL, "%s_%s",
      dev_name(dev), i2s_clk_desc[i]);
  if (!i2s_clk_name[i])
   return -ENOMEM;
 }

 if (!(priv->quirks & QUIRK_NO_MUXPSR)) {

  u32 val = readl(priv->addr + I2SPSR);
  writel(val | PSR_PSREN, priv->addr + I2SPSR);

  priv->clk_table[CLK_I2S_RCLK_SRC] = clk_register_mux(dev,
    i2s_clk_name[CLK_I2S_RCLK_SRC], p_names,
    ARRAY_SIZE(p_names),
    CLK_SET_RATE_NO_REPARENT | CLK_SET_RATE_PARENT,
    priv->addr + I2SMOD, reg_info->rclksrc_off,
    1, 0, &priv->lock);

  priv->clk_table[CLK_I2S_RCLK_PSR] = clk_register_divider(dev,
    i2s_clk_name[CLK_I2S_RCLK_PSR],
    i2s_clk_name[CLK_I2S_RCLK_SRC],
    CLK_SET_RATE_PARENT,
    priv->addr + I2SPSR, 8, 6, 0, &priv->lock);

  p_names[0] = i2s_clk_name[CLK_I2S_RCLK_PSR];
  priv->clk_data.clk_num = 2;
 }

 priv->clk_table[CLK_I2S_CDCLK] = clk_register_gate(dev,
    i2s_clk_name[CLK_I2S_CDCLK], p_names[0],
    CLK_SET_RATE_PARENT,
    priv->addr + I2SMOD, reg_info->cdclkcon_off,
    CLK_GATE_SET_TO_DISABLE, &priv->lock);

 priv->clk_data.clk_num += 1;
 priv->clk_data.clks = priv->clk_table;

 ret = of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
      &priv->clk_data);
 if (ret < 0) {
  dev_err(dev, "failed to add clock provider: %d\n", ret);
  i2s_unregister_clocks(priv);
 }

 return ret;
}

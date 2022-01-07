
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int bus_clk; int mod_clk; int regmap; } ;
struct device {int dummy; } ;


 int SUN4I_I2S_CTRL_GL_EN ;
 int SUN4I_I2S_CTRL_REG ;
 int SUN4I_I2S_CTRL_SDO_EN (int ) ;
 int SUN4I_I2S_CTRL_SDO_EN_MASK ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 struct sun4i_i2s* dev_get_drvdata (struct device*) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int sun4i_i2s_runtime_resume(struct device *dev)
{
 struct sun4i_i2s *i2s = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(i2s->bus_clk);
 if (ret) {
  dev_err(dev, "Failed to enable bus clock\n");
  return ret;
 }

 regcache_cache_only(i2s->regmap, 0);
 regcache_mark_dirty(i2s->regmap);

 ret = regcache_sync(i2s->regmap);
 if (ret) {
  dev_err(dev, "Failed to sync regmap cache\n");
  goto err_disable_clk;
 }


 regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
      SUN4I_I2S_CTRL_GL_EN, SUN4I_I2S_CTRL_GL_EN);


 regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
      SUN4I_I2S_CTRL_SDO_EN_MASK,
      SUN4I_I2S_CTRL_SDO_EN(0));

 ret = clk_prepare_enable(i2s->mod_clk);
 if (ret) {
  dev_err(dev, "Failed to enable module clock\n");
  goto err_disable_clk;
 }

 return 0;

err_disable_clk:
 clk_disable_unprepare(i2s->bus_clk);
 return ret;
}

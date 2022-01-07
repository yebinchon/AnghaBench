
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int bus_clk; int regmap; int mod_clk; } ;
struct device {int dummy; } ;


 int SUN4I_I2S_CTRL_GL_EN ;
 int SUN4I_I2S_CTRL_REG ;
 int SUN4I_I2S_CTRL_SDO_EN_MASK ;
 int clk_disable_unprepare (int ) ;
 struct sun4i_i2s* dev_get_drvdata (struct device*) ;
 int regcache_cache_only (int ,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int sun4i_i2s_runtime_suspend(struct device *dev)
{
 struct sun4i_i2s *i2s = dev_get_drvdata(dev);

 clk_disable_unprepare(i2s->mod_clk);


 regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
      SUN4I_I2S_CTRL_SDO_EN_MASK, 0);


 regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
      SUN4I_I2S_CTRL_GL_EN, 0);

 regcache_cache_only(i2s->regmap, 1);

 clk_disable_unprepare(i2s->bus_clk);

 return 0;
}

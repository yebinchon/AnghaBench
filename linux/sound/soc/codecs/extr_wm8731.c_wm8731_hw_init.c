
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8731_priv {int supplies; int regmap; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int WM8731_APANA ;
 int WM8731_LINVOL ;
 int WM8731_LOUT1V ;
 int WM8731_PWR ;
 int WM8731_RINVOL ;
 int WM8731_ROUT1V ;
 int dev_err (struct device*,char*,int) ;
 int regcache_mark_dirty (int ) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int regmap_write (int ,int ,int) ;
 int regulator_bulk_disable (int ,int ) ;
 int wm8731_reset (int ) ;

__attribute__((used)) static int wm8731_hw_init(struct device *dev, struct wm8731_priv *wm8731)
{
 int ret = 0;

 ret = wm8731_reset(wm8731->regmap);
 if (ret < 0) {
  dev_err(dev, "Failed to issue reset: %d\n", ret);
  goto err_regulator_enable;
 }


 regmap_write(wm8731->regmap, WM8731_PWR, 0x7f);


 regmap_update_bits(wm8731->regmap, WM8731_LOUT1V, 0x100, 0);
 regmap_update_bits(wm8731->regmap, WM8731_ROUT1V, 0x100, 0);
 regmap_update_bits(wm8731->regmap, WM8731_LINVOL, 0x100, 0);
 regmap_update_bits(wm8731->regmap, WM8731_RINVOL, 0x100, 0);


 regmap_update_bits(wm8731->regmap, WM8731_APANA, 0x8, 0);

 regcache_mark_dirty(wm8731->regmap);

err_regulator_enable:

 regulator_bulk_disable(ARRAY_SIZE(wm8731->supplies), wm8731->supplies);

 return ret;
}

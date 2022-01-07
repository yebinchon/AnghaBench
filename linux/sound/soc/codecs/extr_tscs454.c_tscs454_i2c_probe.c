
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs454 {int sysclk_src_id; int regmap; int sysclk; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOENT ;
 int ENOMEM ;
 int FV_RESET_PWR_ON_DEFAULTS ;
 int GFP_KERNEL ;
 int IS_ERR (int ) ;
 int PLL_INPUT_BCLK ;
 int PLL_INPUT_XTAL ;
 int PTR_ERR (int ) ;
 int R_PAGESEL ;
 int R_RESET ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int) ;
 int devm_clk_get (int *,int ) ;
 struct tscs454* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct tscs454*) ;
 int regcache_mark_dirty (int ) ;
 int regmap_register_patch (int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int soc_component_dev_tscs454 ;
 int * src_names ;
 int tscs454_dais ;
 int tscs454_data_init (struct tscs454*,struct i2c_client*) ;
 int tscs454_patch ;

__attribute__((used)) static int tscs454_i2c_probe(struct i2c_client *i2c,
  const struct i2c_device_id *id)
{
 struct tscs454 *tscs454;
 int src;
 int ret;

 tscs454 = devm_kzalloc(&i2c->dev, sizeof(*tscs454), GFP_KERNEL);
 if (!tscs454)
  return -ENOMEM;

 ret = tscs454_data_init(tscs454, i2c);
 if (ret < 0)
  return ret;

 i2c_set_clientdata(i2c, tscs454);

 for (src = PLL_INPUT_XTAL; src < PLL_INPUT_BCLK; src++) {
  tscs454->sysclk = devm_clk_get(&i2c->dev, src_names[src]);
  if (!IS_ERR(tscs454->sysclk)) {
   break;
  } else if (PTR_ERR(tscs454->sysclk) != -ENOENT) {
   ret = PTR_ERR(tscs454->sysclk);
   dev_err(&i2c->dev, "Failed to get sysclk (%d)\n", ret);
   return ret;
  }
 }
 dev_dbg(&i2c->dev, "PLL input is %s\n", src_names[src]);
 tscs454->sysclk_src_id = src;

 ret = regmap_write(tscs454->regmap,
   R_RESET, FV_RESET_PWR_ON_DEFAULTS);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to reset the component (%d)\n", ret);
  return ret;
 }
 regcache_mark_dirty(tscs454->regmap);

 ret = regmap_register_patch(tscs454->regmap, tscs454_patch,
   ARRAY_SIZE(tscs454_patch));
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to apply patch (%d)\n", ret);
  return ret;
 }

 regmap_write(tscs454->regmap, R_PAGESEL, 0x00);

 ret = devm_snd_soc_register_component(&i2c->dev, &soc_component_dev_tscs454,
   tscs454_dais, ARRAY_SIZE(tscs454_dais));
 if (ret) {
  dev_err(&i2c->dev, "Failed to register component (%d)\n", ret);
  return ret;
 }

 return 0;
}

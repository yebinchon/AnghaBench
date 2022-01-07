
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ shared_lrclk; } ;
struct wm8960_priv {int regmap; TYPE_1__ pdata; int mclk; } ;
struct wm8960_data {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_3__ dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WM8960_ADDCTL2 ;
 int WM8960_LADC ;
 int WM8960_LDAC ;
 int WM8960_LINVOL ;
 int WM8960_LOUT1 ;
 int WM8960_LOUT2 ;
 int WM8960_RADC ;
 int WM8960_RDAC ;
 int WM8960_RINVOL ;
 int WM8960_ROUT1 ;
 int WM8960_ROUT2 ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct wm8960_data* dev_get_platdata (TYPE_3__*) ;
 int devm_clk_get (TYPE_3__*,char*) ;
 struct wm8960_priv* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (TYPE_3__*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8960_priv*) ;
 int memcpy (TYPE_1__*,struct wm8960_data*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int soc_component_dev_wm8960 ;
 int wm8960_dai ;
 int wm8960_regmap ;
 int wm8960_reset (int ) ;
 int wm8960_set_pdata_from_of (struct i2c_client*,TYPE_1__*) ;

__attribute__((used)) static int wm8960_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm8960_data *pdata = dev_get_platdata(&i2c->dev);
 struct wm8960_priv *wm8960;
 int ret;

 wm8960 = devm_kzalloc(&i2c->dev, sizeof(struct wm8960_priv),
         GFP_KERNEL);
 if (wm8960 == ((void*)0))
  return -ENOMEM;

 wm8960->mclk = devm_clk_get(&i2c->dev, "mclk");
 if (IS_ERR(wm8960->mclk)) {
  if (PTR_ERR(wm8960->mclk) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
 }

 wm8960->regmap = devm_regmap_init_i2c(i2c, &wm8960_regmap);
 if (IS_ERR(wm8960->regmap))
  return PTR_ERR(wm8960->regmap);

 if (pdata)
  memcpy(&wm8960->pdata, pdata, sizeof(struct wm8960_data));
 else if (i2c->dev.of_node)
  wm8960_set_pdata_from_of(i2c, &wm8960->pdata);

 ret = wm8960_reset(wm8960->regmap);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to issue reset\n");
  return ret;
 }

 if (wm8960->pdata.shared_lrclk) {
  ret = regmap_update_bits(wm8960->regmap, WM8960_ADDCTL2,
      0x4, 0x4);
  if (ret != 0) {
   dev_err(&i2c->dev, "Failed to enable LRCM: %d\n",
    ret);
   return ret;
  }
 }


 regmap_update_bits(wm8960->regmap, WM8960_LINVOL, 0x100, 0x100);
 regmap_update_bits(wm8960->regmap, WM8960_RINVOL, 0x100, 0x100);
 regmap_update_bits(wm8960->regmap, WM8960_LADC, 0x100, 0x100);
 regmap_update_bits(wm8960->regmap, WM8960_RADC, 0x100, 0x100);
 regmap_update_bits(wm8960->regmap, WM8960_LDAC, 0x100, 0x100);
 regmap_update_bits(wm8960->regmap, WM8960_RDAC, 0x100, 0x100);
 regmap_update_bits(wm8960->regmap, WM8960_LOUT1, 0x100, 0x100);
 regmap_update_bits(wm8960->regmap, WM8960_ROUT1, 0x100, 0x100);
 regmap_update_bits(wm8960->regmap, WM8960_LOUT2, 0x100, 0x100);
 regmap_update_bits(wm8960->regmap, WM8960_ROUT2, 0x100, 0x100);

 i2c_set_clientdata(i2c, wm8960);

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_wm8960, &wm8960_dai, 1);

 return ret;
}

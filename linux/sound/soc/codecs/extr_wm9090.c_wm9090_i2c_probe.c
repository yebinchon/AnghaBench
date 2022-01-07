
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wm9090_priv {int pdata; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WM9090_SOFTWARE_RESET ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct wm9090_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm9090_priv*) ;
 int memcpy (int *,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 int soc_component_dev_wm9090 ;
 int wm9090_regmap ;

__attribute__((used)) static int wm9090_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm9090_priv *wm9090;
 unsigned int reg;
 int ret;

 wm9090 = devm_kzalloc(&i2c->dev, sizeof(*wm9090), GFP_KERNEL);
 if (!wm9090)
  return -ENOMEM;

 wm9090->regmap = devm_regmap_init_i2c(i2c, &wm9090_regmap);
 if (IS_ERR(wm9090->regmap)) {
  ret = PTR_ERR(wm9090->regmap);
  dev_err(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
  return ret;
 }

 ret = regmap_read(wm9090->regmap, WM9090_SOFTWARE_RESET, &reg);
 if (ret < 0)
  return ret;

 if (reg != 0x9093) {
  dev_err(&i2c->dev, "Device is not a WM9090, ID=%x\n", reg);
  return -ENODEV;
 }

 ret = regmap_write(wm9090->regmap, WM9090_SOFTWARE_RESET, 0);
 if (ret < 0)
  return ret;

 if (i2c->dev.platform_data)
  memcpy(&wm9090->pdata, i2c->dev.platform_data,
         sizeof(wm9090->pdata));

 i2c_set_clientdata(i2c, wm9090);

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_wm9090, ((void*)0), 0);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to register CODEC: %d\n", ret);
  return ret;
 }

 return 0;
}

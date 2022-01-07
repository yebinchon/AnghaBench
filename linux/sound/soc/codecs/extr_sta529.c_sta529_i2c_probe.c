
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta529 {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct sta529* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct sta529*) ;
 int sta529_component_driver ;
 int sta529_dai ;
 int sta529_regmap ;

__attribute__((used)) static int sta529_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct sta529 *sta529;
 int ret;

 sta529 = devm_kzalloc(&i2c->dev, sizeof(struct sta529), GFP_KERNEL);
 if (!sta529)
  return -ENOMEM;

 sta529->regmap = devm_regmap_init_i2c(i2c, &sta529_regmap);
 if (IS_ERR(sta529->regmap)) {
  ret = PTR_ERR(sta529->regmap);
  dev_err(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
  return ret;
 }

 i2c_set_clientdata(i2c, sta529);

 ret = devm_snd_soc_register_component(&i2c->dev,
   &sta529_component_driver, &sta529_dai, 1);
 if (ret != 0)
  dev_err(&i2c->dev, "Failed to register CODEC: %d\n", ret);

 return ret;
}

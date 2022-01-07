
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct da732x_priv {int regmap; } ;


 int ARRAY_SIZE (int ) ;
 unsigned int DA732X_ID_MAJOR_MASK ;
 unsigned int DA732X_ID_MINOR_MASK ;
 int DA732X_REG_ID ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int da732x_dai ;
 int da732x_regmap ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,unsigned int,unsigned int) ;
 struct da732x_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct da732x_priv*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int soc_component_dev_da732x ;

__attribute__((used)) static int da732x_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct da732x_priv *da732x;
 unsigned int reg;
 int ret;

 da732x = devm_kzalloc(&i2c->dev, sizeof(struct da732x_priv),
         GFP_KERNEL);
 if (!da732x)
  return -ENOMEM;

 i2c_set_clientdata(i2c, da732x);

 da732x->regmap = devm_regmap_init_i2c(i2c, &da732x_regmap);
 if (IS_ERR(da732x->regmap)) {
  ret = PTR_ERR(da732x->regmap);
  dev_err(&i2c->dev, "Failed to initialize regmap\n");
  goto err;
 }

 ret = regmap_read(da732x->regmap, DA732X_REG_ID, &reg);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to read ID register: %d\n", ret);
  goto err;
 }

 dev_info(&i2c->dev, "Revision: %d.%d\n",
   (reg & DA732X_ID_MAJOR_MASK) >> 4,
   (reg & DA732X_ID_MINOR_MASK));

 ret = devm_snd_soc_register_component(&i2c->dev,
         &soc_component_dev_da732x,
         da732x_dai, ARRAY_SIZE(da732x_dai));
 if (ret != 0)
  dev_err(&i2c->dev, "Failed to register component.\n");

err:
 return ret;
}

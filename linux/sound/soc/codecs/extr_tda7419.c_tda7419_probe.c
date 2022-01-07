
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tda7419_data {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_3__ {int def; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct tda7419_data* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct tda7419_data*) ;
 int regmap_write (int ,int ,int ) ;
 int tda7419_component_driver ;
 int tda7419_regmap_config ;
 TYPE_1__* tda7419_regmap_defaults ;

__attribute__((used)) static int tda7419_probe(struct i2c_client *i2c,
    const struct i2c_device_id *id)
{
 struct tda7419_data *tda7419;
 int i, ret;

 tda7419 = devm_kzalloc(&i2c->dev,
          sizeof(struct tda7419_data),
          GFP_KERNEL);
 if (tda7419 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, tda7419);

 tda7419->regmap = devm_regmap_init_i2c(i2c, &tda7419_regmap_config);
 if (IS_ERR(tda7419->regmap)) {
  ret = PTR_ERR(tda7419->regmap);
  dev_err(&i2c->dev, "error initializing regmap: %d\n",
    ret);
  return ret;
 }







 for (i = 0; i < ARRAY_SIZE(tda7419_regmap_defaults); i++)
  regmap_write(tda7419->regmap,
        tda7419_regmap_defaults[i].reg,
        tda7419_regmap_defaults[i].def);

 ret = devm_snd_soc_register_component(&i2c->dev,
  &tda7419_component_driver, ((void*)0), 0);
 if (ret < 0) {
  dev_err(&i2c->dev, "error registering component: %d\n",
    ret);
 }

 return ret;
}

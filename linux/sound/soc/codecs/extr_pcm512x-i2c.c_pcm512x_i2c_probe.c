
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int read_flag_mask; int write_flag_mask; } ;
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,struct regmap_config*) ;
 int pcm512x_probe (int *,struct regmap*) ;
 struct regmap_config pcm512x_regmap ;

__attribute__((used)) static int pcm512x_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct regmap *regmap;
 struct regmap_config config = pcm512x_regmap;


 config.read_flag_mask = 0x80;
 config.write_flag_mask = 0x80;

 regmap = devm_regmap_init_i2c(i2c, &config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return pcm512x_probe(&i2c->dev, regmap);
}

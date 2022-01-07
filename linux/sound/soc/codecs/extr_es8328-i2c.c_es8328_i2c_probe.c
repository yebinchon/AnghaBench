
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int es8328_probe (int *,int ) ;
 int es8328_regmap_config ;

__attribute__((used)) static int es8328_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 return es8328_probe(&i2c->dev,
   devm_regmap_init_i2c(i2c, &es8328_regmap_config));
}

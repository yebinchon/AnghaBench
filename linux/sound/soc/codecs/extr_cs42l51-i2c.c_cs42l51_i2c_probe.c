
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int cs42l51_probe (int *,int ) ;
 struct regmap_config cs42l51_regmap ;
 int devm_regmap_init_i2c (struct i2c_client*,struct regmap_config*) ;

__attribute__((used)) static int cs42l51_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct regmap_config config;

 config = cs42l51_regmap;

 return cs42l51_probe(&i2c->dev, devm_regmap_init_i2c(i2c, &config));
}

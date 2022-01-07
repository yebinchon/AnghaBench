
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int val_bits; int reg_bits; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {int dev; } ;
typedef enum ad193x_type { ____Placeholder_ad193x_type } ad193x_type ;


 int ad193x_probe (int *,int ,int) ;
 struct regmap_config ad193x_regmap_config ;
 int devm_regmap_init_i2c (struct i2c_client*,struct regmap_config*) ;

__attribute__((used)) static int ad193x_i2c_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct regmap_config config;

 config = ad193x_regmap_config;
 config.val_bits = 8;
 config.reg_bits = 8;

 return ad193x_probe(&client->dev,
       devm_regmap_init_i2c(client, &config),
       (enum ad193x_type)id->driver_data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int reg_bits; int val_bits; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int cs4271_probe (int *,int ) ;
 struct regmap_config cs4271_regmap_config ;
 int devm_regmap_init_i2c (struct i2c_client*,struct regmap_config*) ;

__attribute__((used)) static int cs4271_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct regmap_config config;

 config = cs4271_regmap_config;
 config.reg_bits = 8;
 config.val_bits = 8;

 return cs4271_probe(&client->dev,
       devm_regmap_init_i2c(client, &config));
}

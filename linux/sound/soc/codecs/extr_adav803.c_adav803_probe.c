
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int adav80x_bus_probe (int *,int ) ;
 int adav80x_regmap_config ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;

__attribute__((used)) static int adav803_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 return adav80x_bus_probe(&client->dev,
  devm_regmap_init_i2c(client, &adav80x_regmap_config));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int driver_data; } ;
struct i2c_client {int dev; } ;


 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int ssm2602_probe (int *,int ,int ) ;
 int ssm2602_regmap_config ;

__attribute__((used)) static int ssm2602_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 return ssm2602_probe(&client->dev, id->driver_data,
  devm_regmap_init_i2c(client, &ssm2602_regmap_config));
}

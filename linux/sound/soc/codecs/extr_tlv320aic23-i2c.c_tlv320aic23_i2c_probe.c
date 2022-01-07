
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int EINVAL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (int ,int ) ;
 int tlv320aic23_probe (int *,struct regmap*) ;
 int tlv320aic23_regmap ;

__attribute__((used)) static int tlv320aic23_i2c_probe(struct i2c_client *i2c,
     const struct i2c_device_id *i2c_id)
{
 struct regmap *regmap;

 if (!i2c_check_functionality(i2c->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EINVAL;

 regmap = devm_regmap_init_i2c(i2c, &tlv320aic23_regmap);
 return tlv320aic23_probe(&i2c->dev, regmap);
}

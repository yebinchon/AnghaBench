
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int pcm179x_common_init (int *,struct regmap*) ;
 int pcm179x_regmap_config ;

__attribute__((used)) static int pcm179x_i2c_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct regmap *regmap;
 int ret;

 regmap = devm_regmap_init_i2c(client, &pcm179x_regmap_config);
 if (IS_ERR(regmap)) {
  ret = PTR_ERR(regmap);
  dev_err(&client->dev, "Failed to allocate regmap: %d\n", ret);
  return ret;
 }

 return pcm179x_common_init(&client->dev, regmap);
}

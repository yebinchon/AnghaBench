
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int irq; int dev; } ;
typedef enum pcm186x_type { ____Placeholder_pcm186x_type } pcm186x_type ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int pcm186x_probe (int *,int const,int,struct regmap*) ;
 int pcm186x_regmap ;

__attribute__((used)) static int pcm186x_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 const enum pcm186x_type type = (enum pcm186x_type)id->driver_data;
 int irq = i2c->irq;
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(i2c, &pcm186x_regmap);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return pcm186x_probe(&i2c->dev, type, irq, regmap);
}

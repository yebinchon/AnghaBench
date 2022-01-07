
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_3__ {int def; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 int max9877_component_driver ;
 int max9877_regmap ;
 TYPE_1__* max9877_regs ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int max9877_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct regmap *regmap;
 int i;

 regmap = devm_regmap_init_i2c(client, &max9877_regmap);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);


 for (i = 0; i < ARRAY_SIZE(max9877_regs); i++)
  regmap_write(regmap, max9877_regs[i].reg, max9877_regs[i].def);

 return devm_snd_soc_register_component(&client->dev,
   &max9877_component_driver, ((void*)0), 0);
}

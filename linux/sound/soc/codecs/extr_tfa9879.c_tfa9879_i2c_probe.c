
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tfa9879_priv {int regmap; } ;
struct i2c_client {int dev; } ;
struct TYPE_3__ {int def; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct tfa9879_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct tfa9879_priv*) ;
 int regmap_write (int ,int ,int ) ;
 int tfa9879_component ;
 int tfa9879_dai ;
 int tfa9879_regmap ;
 TYPE_1__* tfa9879_regs ;

__attribute__((used)) static int tfa9879_i2c_probe(struct i2c_client *i2c)
{
 struct tfa9879_priv *tfa9879;
 int i;

 tfa9879 = devm_kzalloc(&i2c->dev, sizeof(*tfa9879), GFP_KERNEL);
 if (!tfa9879)
  return -ENOMEM;

 i2c_set_clientdata(i2c, tfa9879);

 tfa9879->regmap = devm_regmap_init_i2c(i2c, &tfa9879_regmap);
 if (IS_ERR(tfa9879->regmap))
  return PTR_ERR(tfa9879->regmap);


 for (i = 0; i < ARRAY_SIZE(tfa9879_regs); i++)
  regmap_write(tfa9879->regmap,
        tfa9879_regs[i].reg, tfa9879_regs[i].def);

 return devm_snd_soc_register_component(&i2c->dev, &tfa9879_component,
            &tfa9879_dai, 1);
}

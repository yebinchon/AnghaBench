
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct cs4341_priv {int regmap; } ;
struct TYPE_3__ {int def; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int cs4341_dai ;
 TYPE_1__* cs4341_reg_defaults ;
 struct cs4341_priv* dev_get_drvdata (struct device*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int regmap_write (int ,int ,int ) ;
 int soc_component_cs4341 ;

__attribute__((used)) static int cs4341_probe(struct device *dev)
{
 struct cs4341_priv *cs4341 = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < ARRAY_SIZE(cs4341_reg_defaults); i++)
  regmap_write(cs4341->regmap, cs4341_reg_defaults[i].reg,
        cs4341_reg_defaults[i].def);

 return devm_snd_soc_register_component(dev, &soc_component_cs4341,
            &cs4341_dai, 1);
}

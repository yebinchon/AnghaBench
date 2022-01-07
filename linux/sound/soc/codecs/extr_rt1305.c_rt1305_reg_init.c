
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt1305_priv {int regmap; } ;


 int RT1305_INIT_REG_LEN ;
 int init_list ;
 int regmap_multi_reg_write (int ,int ,int ) ;
 struct rt1305_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt1305_reg_init(struct snd_soc_component *component)
{
 struct rt1305_priv *rt1305 = snd_soc_component_get_drvdata(component);

 regmap_multi_reg_write(rt1305->regmap, init_list, RT1305_INIT_REG_LEN);
 return 0;
}

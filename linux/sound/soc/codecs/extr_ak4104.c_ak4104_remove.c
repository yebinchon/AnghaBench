
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct ak4104_private {int regulator; int regmap; } ;


 int AK4104_CONTROL1_PW ;
 int AK4104_CONTROL1_RSTN ;
 int AK4104_REG_CONTROL1 ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int regulator_disable (int ) ;
 struct ak4104_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void ak4104_remove(struct snd_soc_component *component)
{
 struct ak4104_private *ak4104 = snd_soc_component_get_drvdata(component);

 regmap_update_bits(ak4104->regmap, AK4104_REG_CONTROL1,
      AK4104_CONTROL1_PW | AK4104_CONTROL1_RSTN, 0);
 regulator_disable(ak4104->regulator);
}

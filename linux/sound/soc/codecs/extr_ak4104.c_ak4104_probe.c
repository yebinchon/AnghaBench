
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct ak4104_private {int regulator; int regmap; } ;


 int AK4104_CONTROL1_PW ;
 int AK4104_CONTROL1_RSTN ;
 int AK4104_REG_CONTROL1 ;
 int AK4104_REG_TX ;
 int AK4104_TX_TXE ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 struct ak4104_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4104_probe(struct snd_soc_component *component)
{
 struct ak4104_private *ak4104 = snd_soc_component_get_drvdata(component);
 int ret;

 ret = regulator_enable(ak4104->regulator);
 if (ret < 0) {
  dev_err(component->dev, "Unable to enable regulator: %d\n", ret);
  return ret;
 }


 ret = regmap_update_bits(ak4104->regmap, AK4104_REG_CONTROL1,
     AK4104_CONTROL1_PW | AK4104_CONTROL1_RSTN,
     AK4104_CONTROL1_PW | AK4104_CONTROL1_RSTN);
 if (ret < 0)
  goto exit_disable_regulator;


 ret = regmap_update_bits(ak4104->regmap, AK4104_REG_TX,
     AK4104_TX_TXE, AK4104_TX_TXE);
 if (ret < 0)
  goto exit_disable_regulator;

 return 0;

exit_disable_regulator:
 regulator_disable(ak4104->regulator);
 return ret;
}

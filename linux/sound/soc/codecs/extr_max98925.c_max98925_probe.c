
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct max98925_priv {int regmap; struct snd_soc_component* component; } ;


 int M98925_DAI_DLY_MASK ;
 int MAX98925_ALC_CONFIGURATION ;
 int MAX98925_BOOST_LIMITER ;
 int MAX98925_CONFIGURATION ;
 int MAX98925_DOUT_HIZ_CFG1 ;
 int MAX98925_DOUT_HIZ_CFG2 ;
 int MAX98925_DOUT_HIZ_CFG3 ;
 int MAX98925_DOUT_HIZ_CFG4 ;
 int MAX98925_FILTERS ;
 int MAX98925_FORMAT ;
 int MAX98925_GLOBAL_ENABLE ;
 int MAX98925_TDM_SLOT_SELECT ;
 int regmap_write (int ,int ,int) ;
 struct max98925_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max98925_probe(struct snd_soc_component *component)
{
 struct max98925_priv *max98925 = snd_soc_component_get_drvdata(component);

 max98925->component = component;
 regmap_write(max98925->regmap, MAX98925_GLOBAL_ENABLE, 0x00);

 regmap_write(max98925->regmap,
   MAX98925_FORMAT, M98925_DAI_DLY_MASK);
 regmap_write(max98925->regmap, MAX98925_TDM_SLOT_SELECT, 0xC8);
 regmap_write(max98925->regmap, MAX98925_DOUT_HIZ_CFG1, 0xFF);
 regmap_write(max98925->regmap, MAX98925_DOUT_HIZ_CFG2, 0xFF);
 regmap_write(max98925->regmap, MAX98925_DOUT_HIZ_CFG3, 0xFF);
 regmap_write(max98925->regmap, MAX98925_DOUT_HIZ_CFG4, 0xF0);
 regmap_write(max98925->regmap, MAX98925_FILTERS, 0xD8);
 regmap_write(max98925->regmap, MAX98925_ALC_CONFIGURATION, 0xF8);
 regmap_write(max98925->regmap, MAX98925_CONFIGURATION, 0xF0);

 regmap_write(max98925->regmap, MAX98925_BOOST_LIMITER, 0xF8);
 return 0;
}

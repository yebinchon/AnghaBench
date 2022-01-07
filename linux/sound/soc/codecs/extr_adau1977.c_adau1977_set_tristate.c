
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct adau1977 {int regmap; } ;


 int ADAU1977_REG_SAI_OVERTEMP ;
 unsigned int ADAU1977_SAI_OVERTEMP_DRV_HIZ ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct adau1977* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int adau1977_set_tristate(struct snd_soc_dai *dai, int tristate)
{
 struct adau1977 *adau1977 = snd_soc_component_get_drvdata(dai->component);
 unsigned int val;

 if (tristate)
  val = ADAU1977_SAI_OVERTEMP_DRV_HIZ;
 else
  val = 0;

 return regmap_update_bits(adau1977->regmap, ADAU1977_REG_SAI_OVERTEMP,
  ADAU1977_SAI_OVERTEMP_DRV_HIZ, val);
}

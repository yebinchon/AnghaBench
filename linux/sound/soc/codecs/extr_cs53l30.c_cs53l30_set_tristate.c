
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {int component; } ;
struct cs53l30_private {int regmap; } ;


 int CS53L30_ASP_3ST ;
 int CS53L30_ASP_3ST_MASK ;
 int CS53L30_ASP_CTL1 ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct cs53l30_private* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int cs53l30_set_tristate(struct snd_soc_dai *dai, int tristate)
{
 struct cs53l30_private *priv = snd_soc_component_get_drvdata(dai->component);
 u8 val = tristate ? CS53L30_ASP_3ST : 0;

 return regmap_update_bits(priv->regmap, CS53L30_ASP_CTL1,
      CS53L30_ASP_3ST_MASK, val);
}

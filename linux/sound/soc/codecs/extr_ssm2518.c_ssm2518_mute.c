
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2518 {int regmap; } ;
struct snd_soc_dai {int component; } ;


 unsigned int SSM2518_MUTE_CTRL_MUTE_MASTER ;
 int SSM2518_REG_MUTE_CTRL ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct ssm2518* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int ssm2518_mute(struct snd_soc_dai *dai, int mute)
{
 struct ssm2518 *ssm2518 = snd_soc_component_get_drvdata(dai->component);
 unsigned int val;

 if (mute)
  val = SSM2518_MUTE_CTRL_MUTE_MASTER;
 else
  val = 0;

 return regmap_update_bits(ssm2518->regmap, SSM2518_REG_MUTE_CTRL,
   SSM2518_MUTE_CTRL_MUTE_MASTER, val);
}

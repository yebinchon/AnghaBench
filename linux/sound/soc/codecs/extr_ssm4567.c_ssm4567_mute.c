
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm4567 {int regmap; } ;
struct snd_soc_dai {int component; } ;


 unsigned int SSM4567_DAC_MUTE ;
 int SSM4567_REG_DAC_CTRL ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct ssm4567* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int ssm4567_mute(struct snd_soc_dai *dai, int mute)
{
 struct ssm4567 *ssm4567 = snd_soc_component_get_drvdata(dai->component);
 unsigned int val;

 val = mute ? SSM4567_DAC_MUTE : 0;
 return regmap_update_bits(ssm4567->regmap, SSM4567_REG_DAC_CTRL,
   SSM4567_DAC_MUTE, val);
}

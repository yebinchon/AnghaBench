
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2602_priv {int regmap; } ;
struct snd_soc_dai {int component; } ;


 int APDIGI_ENABLE_DAC_MUTE ;
 int SSM2602_APDIGI ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct ssm2602_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int ssm2602_mute(struct snd_soc_dai *dai, int mute)
{
 struct ssm2602_priv *ssm2602 = snd_soc_component_get_drvdata(dai->component);

 if (mute)
  regmap_update_bits(ssm2602->regmap, SSM2602_APDIGI,
        APDIGI_ENABLE_DAC_MUTE,
        APDIGI_ENABLE_DAC_MUTE);
 else
  regmap_update_bits(ssm2602->regmap, SSM2602_APDIGI,
        APDIGI_ENABLE_DAC_MUTE, 0);
 return 0;
}

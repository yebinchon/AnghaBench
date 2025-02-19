
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5663_priv {int jack_type; int codec_ver; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int CODEC_VER_1 ;
 int RT5663_DIG_GATE_CTRL_DIS ;
 int RT5663_DIG_GATE_CTRL_EN ;
 int RT5663_DIG_GATE_CTRL_MASK ;
 int RT5663_DIG_MISC ;
 int RT5663_EN_ANA_CLK_DET_AUTO ;
 int RT5663_EN_ANA_CLK_DET_DIS ;
 int RT5663_EN_ANA_CLK_DET_MASK ;
 int RT5663_PWR_ANLG_1 ;
 int RT5663_PWR_CLK_DET_DIS ;
 int RT5663_PWR_CLK_DET_EN ;
 int RT5663_PWR_CLK_DET_MASK ;
 int RT5663_PWR_FV1 ;
 int RT5663_PWR_FV1_MASK ;
 int RT5663_PWR_FV2 ;
 int RT5663_PWR_FV2_MASK ;
 int RT5663_PWR_MB ;
 int RT5663_PWR_MB_MASK ;
 int RT5663_PWR_VREF1 ;
 int RT5663_PWR_VREF1_MASK ;
 int RT5663_PWR_VREF2 ;
 int RT5663_PWR_VREF2_MASK ;
 int RT5663_SIG_CLK_DET ;
 int SND_JACK_HEADSET ;




 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5663_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  snd_soc_component_update_bits(component, RT5663_PWR_ANLG_1,
   RT5663_PWR_FV1_MASK | RT5663_PWR_FV2_MASK,
   RT5663_PWR_FV1 | RT5663_PWR_FV2);
  break;

 case 129:
  if (rt5663->codec_ver == CODEC_VER_1) {
   snd_soc_component_update_bits(component, RT5663_DIG_MISC,
    RT5663_DIG_GATE_CTRL_MASK,
    RT5663_DIG_GATE_CTRL_EN);
   snd_soc_component_update_bits(component, RT5663_SIG_CLK_DET,
    RT5663_EN_ANA_CLK_DET_MASK |
    RT5663_PWR_CLK_DET_MASK,
    RT5663_EN_ANA_CLK_DET_AUTO |
    RT5663_PWR_CLK_DET_EN);
  }
  break;

 case 128:
  if (rt5663->codec_ver == CODEC_VER_1)
   snd_soc_component_update_bits(component, RT5663_DIG_MISC,
    RT5663_DIG_GATE_CTRL_MASK,
    RT5663_DIG_GATE_CTRL_DIS);
  snd_soc_component_update_bits(component, RT5663_PWR_ANLG_1,
   RT5663_PWR_VREF1_MASK | RT5663_PWR_VREF2_MASK |
   RT5663_PWR_FV1_MASK | RT5663_PWR_FV2_MASK |
   RT5663_PWR_MB_MASK, RT5663_PWR_VREF1 |
   RT5663_PWR_VREF2 | RT5663_PWR_MB);
  usleep_range(10000, 10005);
  if (rt5663->codec_ver == CODEC_VER_1) {
   snd_soc_component_update_bits(component, RT5663_SIG_CLK_DET,
    RT5663_EN_ANA_CLK_DET_MASK |
    RT5663_PWR_CLK_DET_MASK,
    RT5663_EN_ANA_CLK_DET_DIS |
    RT5663_PWR_CLK_DET_DIS);
  }
  break;

 case 131:
  if (rt5663->jack_type != SND_JACK_HEADSET)
   snd_soc_component_update_bits(component,
    RT5663_PWR_ANLG_1,
    RT5663_PWR_VREF1_MASK | RT5663_PWR_VREF2_MASK |
    RT5663_PWR_FV1 | RT5663_PWR_FV2 |
    RT5663_PWR_MB_MASK, 0);
  else
   snd_soc_component_update_bits(component,
    RT5663_PWR_ANLG_1,
    RT5663_PWR_FV1_MASK | RT5663_PWR_FV2_MASK,
    RT5663_PWR_FV1 | RT5663_PWR_FV2);
  break;

 default:
  break;
 }

 return 0;
}

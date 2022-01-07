
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int BIT (int) ;
 int EINVAL ;
 int LM49453_AUDIO_PORT1_BASIC_CLK_MS ;
 int LM49453_AUDIO_PORT1_BASIC_FMT_MASK ;
 int LM49453_AUDIO_PORT1_BASIC_SYNC_MS ;
 int LM49453_P0_AUDIO_PORT1_BASIC_REG ;
 int LM49453_P0_AUDIO_PORT1_RX_MSB_REG ;






 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int lm49453_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;

 u16 aif_val;
 int mode = 0;
 int clk_phase = 0;
 int clk_shift = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  aif_val = 0;
  break;
 case 132:
  aif_val = LM49453_AUDIO_PORT1_BASIC_SYNC_MS;
  break;
 case 133:
  aif_val = LM49453_AUDIO_PORT1_BASIC_CLK_MS;
  break;
 case 134:
  aif_val = LM49453_AUDIO_PORT1_BASIC_CLK_MS |
     LM49453_AUDIO_PORT1_BASIC_SYNC_MS;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  break;
 case 130:
  mode = 1;
  clk_phase = (1 << 5);
  clk_shift = 1;
  break;
 case 129:
  mode = 1;
  clk_phase = (1 << 5);
  clk_shift = 0;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, LM49453_P0_AUDIO_PORT1_BASIC_REG,
       LM49453_AUDIO_PORT1_BASIC_FMT_MASK|BIT(0)|BIT(5),
       (aif_val | mode | clk_phase));

 snd_soc_component_write(component, LM49453_P0_AUDIO_PORT1_RX_MSB_REG, clk_shift);

 return 0;
}

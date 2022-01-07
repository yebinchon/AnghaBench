
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int INNO_R02 ;
 int INNO_R02_LRCP_MSK ;
 unsigned int INNO_R02_LRCP_NORMAL ;
 unsigned int INNO_R02_VWL_16BIT ;
 unsigned int INNO_R02_VWL_20BIT ;
 unsigned int INNO_R02_VWL_24BIT ;
 unsigned int INNO_R02_VWL_32BIT ;
 int INNO_R02_VWL_MSK ;
 int INNO_R03 ;
 int INNO_R03_DACR_MSK ;
 unsigned int INNO_R03_DACR_WORK ;
 unsigned int INNO_R03_FWL_32BIT ;
 int INNO_R03_FWL_MSK ;




 int params_format (struct snd_pcm_hw_params*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,unsigned int) ;

__attribute__((used)) static int rk3036_codec_dai_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *hw_params,
          struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 unsigned int reg02_val = 0, reg03_val = 0;

 switch (params_format(hw_params)) {
 case 131:
  reg02_val |= INNO_R02_VWL_16BIT;
  break;
 case 130:
  reg02_val |= INNO_R02_VWL_20BIT;
  break;
 case 129:
  reg02_val |= INNO_R02_VWL_24BIT;
  break;
 case 128:
  reg02_val |= INNO_R02_VWL_32BIT;
  break;
 default:
  return -EINVAL;
 }

 reg02_val |= INNO_R02_LRCP_NORMAL;
 reg03_val |= INNO_R03_FWL_32BIT | INNO_R03_DACR_WORK;

 snd_soc_component_update_bits(component, INNO_R02, INNO_R02_LRCP_MSK |
       INNO_R02_VWL_MSK, reg02_val);
 snd_soc_component_update_bits(component, INNO_R03, INNO_R03_DACR_MSK |
       INNO_R03_FWL_MSK, reg03_val);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;
 int PDMIC_CR ;
 int PDMIC_CR_ENPDM_DIS ;
 int PDMIC_CR_ENPDM_EN ;
 int PDMIC_CR_ENPDM_MASK ;
 int PDMIC_CR_ENPDM_SHIFT ;






 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int atmel_pdmic_codec_dai_trigger(struct snd_pcm_substream *substream,
     int cmd, struct snd_soc_dai *codec_dai)
{
 struct snd_soc_component *component = codec_dai->component;
 u32 val;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  val = PDMIC_CR_ENPDM_EN << PDMIC_CR_ENPDM_SHIFT;
  break;
 case 129:
 case 128:
 case 133:
  val = PDMIC_CR_ENPDM_DIS << PDMIC_CR_ENPDM_SHIFT;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, PDMIC_CR, PDMIC_CR_ENPDM_MASK, val);

 return 0;
}

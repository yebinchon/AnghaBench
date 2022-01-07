
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int PDMIC_CR ;
 int PDMIC_CR_ENPDM_DIS ;
 int PDMIC_CR_ENPDM_MASK ;
 int PDMIC_CR_ENPDM_SHIFT ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int atmel_pdmic_codec_dai_prepare(struct snd_pcm_substream *substream,
     struct snd_soc_dai *codec_dai)
{
 struct snd_soc_component *component = codec_dai->component;

 snd_soc_component_update_bits(component, PDMIC_CR, PDMIC_CR_ENPDM_MASK,
       PDMIC_CR_ENPDM_DIS << PDMIC_CR_ENPDM_SHIFT);

 return 0;
}

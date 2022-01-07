
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ak5558_priv {int slot_width; } ;


 int AK5558_02_CONTROL1 ;
 int AK5558_BITS ;
 int AK5558_DIF_24BIT_MODE ;
 int AK5558_DIF_32BIT_MODE ;
 int EINVAL ;
 int max (int ,int ) ;
 int params_physical_width (struct snd_pcm_hw_params*) ;
 struct ak5558_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int ak5558_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct ak5558_priv *ak5558 = snd_soc_component_get_drvdata(component);
 u8 bits;
 int pcm_width = max(params_physical_width(params), ak5558->slot_width);

 switch (pcm_width) {
 case 16:
  bits = AK5558_DIF_24BIT_MODE;
  break;
 case 32:
  bits = AK5558_DIF_32BIT_MODE;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, AK5558_02_CONTROL1, AK5558_BITS, bits);

 return 0;
}

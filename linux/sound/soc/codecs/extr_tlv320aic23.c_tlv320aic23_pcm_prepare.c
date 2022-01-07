
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int TLV320AIC23_ACTIVE ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int tlv320aic23_pcm_prepare(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;


 snd_soc_component_write(component, TLV320AIC23_ACTIVE, 0x0001);

 return 0;
}

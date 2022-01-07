
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int CLASSD_MR ;
 int CLASSD_MR_LEN_DIS ;
 int CLASSD_MR_LEN_MASK ;
 int CLASSD_MR_LEN_SHIFT ;
 int CLASSD_MR_REN_DIS ;
 int CLASSD_MR_REN_MASK ;
 int CLASSD_MR_REN_SHIFT ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int atmel_classd_codec_dai_prepare(struct snd_pcm_substream *substream,
     struct snd_soc_dai *codec_dai)
{
 struct snd_soc_component *component = codec_dai->component;

 snd_soc_component_update_bits(component, CLASSD_MR,
    CLASSD_MR_LEN_MASK | CLASSD_MR_REN_MASK,
    (CLASSD_MR_LEN_DIS << CLASSD_MR_LEN_SHIFT)
    |(CLASSD_MR_REN_DIS << CLASSD_MR_REN_SHIFT));

 return 0;
}

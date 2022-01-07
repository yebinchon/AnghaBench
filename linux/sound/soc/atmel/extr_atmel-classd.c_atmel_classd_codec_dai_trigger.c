
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
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
 int EINVAL ;






 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int atmel_classd_codec_dai_trigger(struct snd_pcm_substream *substream,
     int cmd, struct snd_soc_dai *codec_dai)
{
 struct snd_soc_component *component = codec_dai->component;
 u32 mask, val;

 mask = CLASSD_MR_LEN_MASK | CLASSD_MR_REN_MASK;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  val = mask;
  break;
 case 129:
 case 128:
 case 133:
  val = (CLASSD_MR_LEN_DIS << CLASSD_MR_LEN_SHIFT)
   | (CLASSD_MR_REN_DIS << CLASSD_MR_REN_SHIFT);
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, CLASSD_MR, mask, val);

 return 0;
}

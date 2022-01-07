
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;






 int davinci_vcif_start (struct snd_pcm_substream*) ;
 int davinci_vcif_stop (struct snd_pcm_substream*) ;

__attribute__((used)) static int davinci_vcif_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *dai)
{
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  davinci_vcif_start(substream);
  break;
 case 129:
 case 128:
 case 133:
  davinci_vcif_stop(substream);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}

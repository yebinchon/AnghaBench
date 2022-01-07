
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct img_i2s_in {int dummy; } ;


 int EINVAL ;






 int img_i2s_in_disable (struct img_i2s_in*) ;
 int img_i2s_in_enable (struct img_i2s_in*) ;
 struct img_i2s_in* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int img_i2s_in_trigger(struct snd_pcm_substream *substream, int cmd,
 struct snd_soc_dai *dai)
{
 struct img_i2s_in *i2s = snd_soc_dai_get_drvdata(dai);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  img_i2s_in_enable(i2s);
  break;

 case 129:
 case 128:
 case 133:
  img_i2s_in_disable(i2s);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}

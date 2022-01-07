
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct dw_i2s_dev {int active; } ;


 int EINVAL ;






 int i2s_start (struct dw_i2s_dev*,struct snd_pcm_substream*) ;
 int i2s_stop (struct dw_i2s_dev*,struct snd_pcm_substream*) ;
 struct dw_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int dw_i2s_trigger(struct snd_pcm_substream *substream,
  int cmd, struct snd_soc_dai *dai)
{
 struct dw_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  dev->active++;
  i2s_start(dev, substream);
  break;

 case 129:
 case 128:
 case 133:
  dev->active--;
  i2s_stop(dev, substream);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}

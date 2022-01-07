
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct pcm1789_private {int work; } ;


 int EINVAL ;






 int schedule_work (int *) ;
 struct pcm1789_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm1789_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct pcm1789_private *priv = snd_soc_component_get_drvdata(component);
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  schedule_work(&priv->work);
  break;
 case 129:
 case 128:
 case 133:
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs454 {struct aif* aifs; } ;
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct aif {int dummy; } ;


 int aif_prepare (struct snd_soc_component*,struct aif*) ;
 struct tscs454* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int tscs454_prepare(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 int ret;
 struct snd_soc_component *component = dai->component;
 struct tscs454 *tscs454 = snd_soc_component_get_drvdata(component);
 struct aif *aif = &tscs454->aifs[dai->id];

 ret = aif_prepare(component, aif);
 if (ret < 0)
  return ret;

 return 0;
}

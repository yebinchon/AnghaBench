
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs454 {struct aif* aifs; } ;
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct aif {int dummy; } ;


 int set_aif_clock_format_from_fmt (struct snd_soc_component*,size_t,unsigned int) ;
 int set_aif_format_from_fmt (struct snd_soc_component*,size_t,unsigned int) ;
 int set_aif_master_from_fmt (struct snd_soc_component*,struct aif*,unsigned int) ;
 struct tscs454* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int tscs454_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct tscs454 *tscs454 = snd_soc_component_get_drvdata(component);
 struct aif *aif = &tscs454->aifs[dai->id];
 int ret;

 ret = set_aif_master_from_fmt(component, aif, fmt);
 if (ret < 0)
  return ret;

 ret = set_aif_format_from_fmt(component, dai->id, fmt);
 if (ret < 0)
  return ret;

 ret = set_aif_clock_format_from_fmt(component, dai->id, fmt);
 if (ret < 0)
  return ret;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int active; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct max98090_priv {int pll_det_disable_work; int master; int pll_det_enable_work; } ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int schedule_work (int *) ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int max98090_dai_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (!max98090->master && dai->active == 1)
   queue_delayed_work(system_power_efficient_wq,
        &max98090->pll_det_enable_work,
        msecs_to_jiffies(10));
  break;
 case 129:
 case 128:
 case 133:
  if (!max98090->master && dai->active == 1)
   schedule_work(&max98090->pll_det_disable_work);
  break;
 default:
  break;
 }

 return 0;
}

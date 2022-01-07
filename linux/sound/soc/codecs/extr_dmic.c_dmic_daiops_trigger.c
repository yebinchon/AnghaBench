
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct dmic {int modeswitch_delay; } ;



 int mdelay (int ) ;
 struct dmic* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int dmic_daiops_trigger(struct snd_pcm_substream *substream,
          int cmd, struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct dmic *dmic = snd_soc_component_get_drvdata(component);

 switch (cmd) {
 case 128:
  if (dmic->modeswitch_delay)
   mdelay(dmic->modeswitch_delay);

  break;
 }

 return 0;
}

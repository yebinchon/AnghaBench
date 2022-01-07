
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct nau8824 {struct snd_soc_dapm_context* dapm; } ;


 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct nau8824* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int nau8824_component_probe(struct snd_soc_component *component)
{
 struct nau8824 *nau8824 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 nau8824->dapm = dapm;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {char* name; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct adau1373 {TYPE_1__* dais; } ;
struct TYPE_2__ {int enable_src; } ;


 struct adau1373* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int adau1373_check_src(struct snd_soc_dapm_widget *source,
 struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct adau1373 *adau1373 = snd_soc_component_get_drvdata(component);
 unsigned int dai;

 dai = sink->name[3] - '1';

 return adau1373->dais[dai].enable_src;
}

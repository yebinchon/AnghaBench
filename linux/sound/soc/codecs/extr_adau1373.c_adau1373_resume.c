
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adau1373 {int regmap; } ;


 int regcache_sync (int ) ;
 struct adau1373* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1373_resume(struct snd_soc_component *component)
{
 struct adau1373 *adau1373 = snd_soc_component_get_drvdata(component);

 regcache_sync(adau1373->regmap);

 return 0;
}

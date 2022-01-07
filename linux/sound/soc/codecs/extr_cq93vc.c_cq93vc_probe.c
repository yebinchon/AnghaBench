
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct davinci_vc {int regmap; } ;
struct TYPE_2__ {struct davinci_vc* platform_data; } ;


 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;

__attribute__((used)) static int cq93vc_probe(struct snd_soc_component *component)
{
 struct davinci_vc *davinci_vc = component->dev->platform_data;

 snd_soc_component_init_regmap(component, davinci_vc->regmap);

 return 0;
}

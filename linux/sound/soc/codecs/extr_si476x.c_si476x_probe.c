
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct TYPE_2__ {int parent; } ;


 int dev_get_regmap (int ,int *) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;

__attribute__((used)) static int si476x_probe(struct snd_soc_component *component)
{
 snd_soc_component_init_regmap(component,
    dev_get_regmap(component->dev->parent, ((void*)0)));

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int list; scalar_t__ regmap; int dev; TYPE_1__* driver; } ;
struct TYPE_2__ {int read; int write; } ;


 int client_mutex ;
 int component_list ;
 scalar_t__ dev_get_regmap (int ,int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_soc_component_setup_regmap (struct snd_soc_component*) ;

__attribute__((used)) static void snd_soc_component_add(struct snd_soc_component *component)
{
 mutex_lock(&client_mutex);

 if (!component->driver->write && !component->driver->read) {
  if (!component->regmap)
   component->regmap = dev_get_regmap(component->dev,
          ((void*)0));
  if (component->regmap)
   snd_soc_component_setup_regmap(component);
 }


 list_add(&component->list, &component_list);

 mutex_unlock(&client_mutex);
}

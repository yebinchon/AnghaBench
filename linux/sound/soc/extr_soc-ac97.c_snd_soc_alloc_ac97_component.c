
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_component {int name; TYPE_2__* card; } ;
struct TYPE_7__ {int release; int parent; int * bus; } ;
struct snd_ac97 {TYPE_3__ dev; scalar_t__ num; int * bus; } ;
struct TYPE_6__ {TYPE_1__* snd_card; int dev; } ;
struct TYPE_5__ {int number; } ;


 int ENOMEM ;
 struct snd_ac97* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int ac97_bus_type ;
 int dev_set_name (TYPE_3__*,char*,int ,int ,int ) ;
 int device_initialize (TYPE_3__*) ;
 struct snd_ac97* kzalloc (int,int ) ;
 int soc_ac97_bus ;
 int soc_ac97_device_release ;

struct snd_ac97 *snd_soc_alloc_ac97_component(struct snd_soc_component *component)
{
 struct snd_ac97 *ac97;

 ac97 = kzalloc(sizeof(struct snd_ac97), GFP_KERNEL);
 if (ac97 == ((void*)0))
  return ERR_PTR(-ENOMEM);

 ac97->bus = &soc_ac97_bus;
 ac97->num = 0;

 ac97->dev.bus = &ac97_bus_type;
 ac97->dev.parent = component->card->dev;
 ac97->dev.release = soc_ac97_device_release;

 dev_set_name(&ac97->dev, "%d-%d:%s",
       component->card->snd_card->number, 0,
       component->name);

 device_initialize(&ac97->dev);

 return ac97;
}

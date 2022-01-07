
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {TYPE_2__* driver; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* prepare ) (struct snd_pcm_substream*) ;} ;


 int stub1 (struct snd_pcm_substream*) ;

int snd_soc_component_prepare(struct snd_soc_component *component,
         struct snd_pcm_substream *substream)
{
 if (component->driver->ops &&
     component->driver->ops->prepare)
  return component->driver->ops->prepare(substream);

 return 0;
}

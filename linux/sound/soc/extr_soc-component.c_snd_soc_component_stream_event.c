
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* stream_event ) (struct snd_soc_component*,int) ;} ;


 int stub1 (struct snd_soc_component*,int) ;

int snd_soc_component_stream_event(struct snd_soc_component *component,
       int event)
{
 if (component->driver->stream_event)
  return component->driver->stream_event(component, event);

 return 0;
}

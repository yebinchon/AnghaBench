
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* driver; } ;
typedef enum snd_soc_dapm_type { ____Placeholder_snd_soc_dapm_type } snd_soc_dapm_type ;
struct TYPE_2__ {int (* seq_notifier ) (struct snd_soc_component*,int,int) ;} ;


 int stub1 (struct snd_soc_component*,int,int) ;

void snd_soc_component_seq_notifier(struct snd_soc_component *component,
        enum snd_soc_dapm_type type, int subseq)
{
 if (component->driver->seq_notifier)
  component->driver->seq_notifier(component, type, subseq);
}

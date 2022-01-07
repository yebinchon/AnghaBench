
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct TYPE_2__ {int kobj; } ;


 int KOBJ_CHANGE ;
 int kobject_uevent_env (int *,int ,char**) ;

__attribute__((used)) static void da7218_micldet_irq(struct snd_soc_component *component)
{
 char *envp[] = {
  "EVENT=MIC_LEVEL_DETECT",
  ((void*)0),
 };

 kobject_uevent_env(&component->dev->kobj, KOBJ_CHANGE, envp);
}

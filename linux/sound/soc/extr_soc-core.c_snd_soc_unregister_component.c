
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ __snd_soc_unregister_component (struct device*) ;

void snd_soc_unregister_component(struct device *dev)
{
 while (__snd_soc_unregister_component(dev))
  ;
}

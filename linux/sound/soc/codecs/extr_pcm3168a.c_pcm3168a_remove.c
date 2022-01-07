
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pcm3168a_disable (struct device*) ;
 int pm_runtime_disable (struct device*) ;

void pcm3168a_remove(struct device *dev)
{
 pm_runtime_disable(dev);

 pcm3168a_disable(dev);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int atmel_soc_platform ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int ) ;

int atmel_pcm_pdc_platform_register(struct device *dev)
{
 return devm_snd_soc_register_component(dev, &atmel_soc_platform,
            ((void*)0), 0);
}

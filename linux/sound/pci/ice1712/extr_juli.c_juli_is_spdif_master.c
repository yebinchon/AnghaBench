
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_data ) (struct snd_ice1712*) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 int GPIO_INTERNAL_CLOCK ;
 int stub1 (struct snd_ice1712*) ;

__attribute__((used)) static inline int juli_is_spdif_master(struct snd_ice1712 *ice)
{
 return (ice->gpio.get_data(ice) & GPIO_INTERNAL_CLOCK) ? 0 : 1;
}

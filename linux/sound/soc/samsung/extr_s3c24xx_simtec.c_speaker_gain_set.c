
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * amp_gain; } ;


 int gpio_set_value_cansleep (int ,int) ;
 TYPE_1__* pdata ;

__attribute__((used)) static void speaker_gain_set(int value)
{
 gpio_set_value_cansleep(pdata->amp_gain[0], value & 1);
 gpio_set_value_cansleep(pdata->amp_gain[1], value >> 1);
}

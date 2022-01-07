
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int rate; int regvalue; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* mt2701_afe_i2s_rates ;

__attribute__((used)) static int mt2701_afe_i2s_fs(unsigned int sample_rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mt2701_afe_i2s_rates); i++)
  if (mt2701_afe_i2s_rates[i].rate == sample_rate)
   return mt2701_afe_i2s_rates[i].regvalue;

 return -EINVAL;
}

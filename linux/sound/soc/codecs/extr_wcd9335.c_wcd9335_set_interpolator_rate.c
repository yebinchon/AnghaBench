
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_4__ {scalar_t__ rate; int rate_val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* int_mix_rate_val ;
 TYPE_1__* int_prim_rate_val ;
 int wcd9335_set_mix_interpolator_rate (struct snd_soc_dai*,int ,scalar_t__) ;
 int wcd9335_set_prim_interpolator_rate (struct snd_soc_dai*,int ,scalar_t__) ;

__attribute__((used)) static int wcd9335_set_interpolator_rate(struct snd_soc_dai *dai, u32 rate)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(int_mix_rate_val); i++) {
  if (rate == int_mix_rate_val[i].rate) {
   wcd9335_set_mix_interpolator_rate(dai,
     int_mix_rate_val[i].rate_val, rate);
   break;
  }
 }


 for (i = 0; i < ARRAY_SIZE(int_prim_rate_val); i++) {
  if (rate == int_prim_rate_val[i].rate) {
   wcd9335_set_prim_interpolator_rate(dai,
     int_prim_rate_val[i].rate_val, rate);
   break;
  }
 }

 return 0;
}

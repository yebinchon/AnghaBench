
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* out_vol_limit; } ;
struct arizona {TYPE_1__ pdata; int regmap; } ;


 scalar_t__ ARIZONA_DAC_VOLUME_LIMIT_1L ;
 int ARIZONA_OUT1L_VOL_LIM_MASK ;
 int ARRAY_SIZE (scalar_t__*) ;
 int regmap_update_bits (int ,scalar_t__,int ,scalar_t__) ;

int arizona_init_vol_limit(struct arizona *arizona)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(arizona->pdata.out_vol_limit); ++i) {
  if (arizona->pdata.out_vol_limit[i])
   regmap_update_bits(arizona->regmap,
        ARIZONA_DAC_VOLUME_LIMIT_1L + i * 4,
        ARIZONA_OUT1L_VOL_LIM_MASK,
        arizona->pdata.out_vol_limit[i]);
 }

 return 0;
}

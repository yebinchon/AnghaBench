
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; } ;
struct pmac_tumbler {TYPE_1__ i2c; } ;


 int EINVAL ;
 int ENODEV ;
 int TAS_REG_LMIX ;
 int TAS_REG_RMIX ;
 scalar_t__ snapper_set_mix_vol1 (struct pmac_tumbler*,int,int,int ) ;

__attribute__((used)) static int snapper_set_mix_vol(struct pmac_tumbler *mix, int idx)
{
 if (! mix->i2c.client)
  return -ENODEV;
 if (snapper_set_mix_vol1(mix, idx, 0, TAS_REG_LMIX) < 0 ||
     snapper_set_mix_vol1(mix, idx, 1, TAS_REG_RMIX) < 0)
  return -EINVAL;
 return 0;
}

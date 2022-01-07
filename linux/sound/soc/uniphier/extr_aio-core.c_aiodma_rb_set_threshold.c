
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct uniphier_aio_sub {TYPE_4__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_8__ {TYPE_3__ rb; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;


 int CDA2D_RBMXBTH (int ) ;
 int CDA2D_RBMXRTH (int ) ;
 int EINVAL ;
 int regmap_write (struct regmap*,int ,scalar_t__) ;

int aiodma_rb_set_threshold(struct uniphier_aio_sub *sub, u64 size, u32 th)
{
 struct regmap *r = sub->aio->chip->regmap;

 if (size <= th)
  return -EINVAL;

 regmap_write(r, CDA2D_RBMXBTH(sub->swm->rb.map), th);
 regmap_write(r, CDA2D_RBMXRTH(sub->swm->rb.map), th);

 return 0;
}

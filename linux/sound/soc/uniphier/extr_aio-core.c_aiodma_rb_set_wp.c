
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct uniphier_aio_sub {TYPE_2__* swm; TYPE_4__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_8__ {TYPE_3__* chip; } ;
struct TYPE_7__ {struct regmap* regmap; } ;
struct TYPE_5__ {int map; } ;
struct TYPE_6__ {TYPE_1__ rb; } ;


 int BIT (int ) ;
 int CDA2D_RBMXWRPTR (int ) ;
 int CDA2D_RBMXWRPTRU (int ) ;
 int CDA2D_WRPTRLOAD ;
 int lower_32_bits (int ) ;
 int regmap_read (struct regmap*,int ,int *) ;
 int regmap_write (struct regmap*,int ,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void aiodma_rb_set_wp(struct uniphier_aio_sub *sub, u64 pos)
{
 struct regmap *r = sub->aio->chip->regmap;
 u32 tmp;
 int i;

 regmap_write(r, CDA2D_RBMXWRPTR(sub->swm->rb.map),
       lower_32_bits(pos));
 regmap_write(r, CDA2D_RBMXWRPTRU(sub->swm->rb.map),
       upper_32_bits(pos));
 regmap_write(r, CDA2D_WRPTRLOAD, BIT(sub->swm->rb.map));

 for (i = 0; i < 6; i++)
  regmap_read(r, CDA2D_RBMXWRPTR(sub->swm->rb.map), &tmp);
}

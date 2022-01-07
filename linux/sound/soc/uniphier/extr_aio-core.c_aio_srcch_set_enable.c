
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct uniphier_aio_sub {TYPE_4__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_8__ {TYPE_3__ och; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;


 int BIT (int ) ;
 int CDA2D_STRT0 ;
 int CDA2D_STRT0_STOP_START ;
 int CDA2D_STRT0_STOP_STOP ;
 int regmap_write (struct regmap*,int ,int) ;

void aio_srcch_set_enable(struct uniphier_aio_sub *sub, int enable)
{
 struct regmap *r = sub->aio->chip->regmap;
 u32 v;

 if (enable)
  v = CDA2D_STRT0_STOP_START;
 else
  v = CDA2D_STRT0_STOP_STOP;

 regmap_write(r, CDA2D_STRT0,
       v | BIT(sub->swm->och.map));
}

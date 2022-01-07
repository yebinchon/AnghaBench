
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uniphier_aio_sub {TYPE_4__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_8__ {scalar_t__ dir; TYPE_3__ rb; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;


 int CDA2D_RBMXIR (int ) ;
 int CDA2D_RBMXIX_REMAIN ;
 int CDA2D_RBMXIX_SPACE ;
 scalar_t__ PORT_DIR_OUTPUT ;
 int regmap_write (struct regmap*,int ,int ) ;

void aiodma_rb_clear_irq(struct uniphier_aio_sub *sub)
{
 struct regmap *r = sub->aio->chip->regmap;

 if (sub->swm->dir == PORT_DIR_OUTPUT)
  regmap_write(r, CDA2D_RBMXIR(sub->swm->rb.map),
        CDA2D_RBMXIX_SPACE);
 else
  regmap_write(r, CDA2D_RBMXIR(sub->swm->rb.map),
        CDA2D_RBMXIX_REMAIN);
}

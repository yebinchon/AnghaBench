
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
struct TYPE_8__ {scalar_t__ dir; TYPE_3__ oport; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;


 int AOUTSRCRSTCTR0 ;
 int AOUTSRCRSTCTR1 ;
 int BIT (int ) ;
 scalar_t__ PORT_DIR_OUTPUT ;
 int regmap_write (struct regmap*,int ,int ) ;

void aio_src_reset(struct uniphier_aio_sub *sub)
{
 struct regmap *r = sub->aio->chip->regmap;

 if (sub->swm->dir != PORT_DIR_OUTPUT)
  return;

 regmap_write(r, AOUTSRCRSTCTR0, BIT(sub->swm->oport.map));
 regmap_write(r, AOUTSRCRSTCTR1, BIT(sub->swm->oport.map));
}

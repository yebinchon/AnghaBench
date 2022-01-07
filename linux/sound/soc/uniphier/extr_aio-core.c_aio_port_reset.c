
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct uniphier_aio_sub {TYPE_5__* swm; TYPE_4__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_6__ {int map; } ;
struct TYPE_10__ {scalar_t__ dir; TYPE_2__ iport; TYPE_1__ oport; } ;
struct TYPE_9__ {TYPE_3__* chip; } ;
struct TYPE_8__ {struct regmap* regmap; } ;


 int AOUTRSTCTR0 ;
 int AOUTRSTCTR1 ;
 int BIT (int ) ;
 int IPORTMXRSTCTR (int ) ;
 int IPORTMXRSTCTR_RSTPI_MASK ;
 int IPORTMXRSTCTR_RSTPI_RELEASE ;
 int IPORTMXRSTCTR_RSTPI_RESET ;
 scalar_t__ PORT_DIR_OUTPUT ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;

void aio_port_reset(struct uniphier_aio_sub *sub)
{
 struct regmap *r = sub->aio->chip->regmap;

 if (sub->swm->dir == PORT_DIR_OUTPUT) {
  regmap_write(r, AOUTRSTCTR0, BIT(sub->swm->oport.map));
  regmap_write(r, AOUTRSTCTR1, BIT(sub->swm->oport.map));
 } else {
  regmap_update_bits(r, IPORTMXRSTCTR(sub->swm->iport.map),
       IPORTMXRSTCTR_RSTPI_MASK,
       IPORTMXRSTCTR_RSTPI_RESET);
  regmap_update_bits(r, IPORTMXRSTCTR(sub->swm->iport.map),
       IPORTMXRSTCTR_RSTPI_MASK,
       IPORTMXRSTCTR_RSTPI_RELEASE);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct uniphier_aio_sub {TYPE_3__* swm; TYPE_5__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_10__ {TYPE_4__* chip; } ;
struct TYPE_9__ {struct regmap* regmap; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_6__ {int map; } ;
struct TYPE_8__ {TYPE_2__ rb; TYPE_1__ ch; } ;


 int BIT (int ) ;
 int CDA2D_STRT0 ;
 int CDA2D_STRT0_STOP_START ;
 int CDA2D_STRT0_STOP_STOP ;
 int INTRBIM (int ) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;

void aiodma_ch_set_enable(struct uniphier_aio_sub *sub, int enable)
{
 struct regmap *r = sub->aio->chip->regmap;

 if (enable) {
  regmap_write(r, CDA2D_STRT0,
        CDA2D_STRT0_STOP_START | BIT(sub->swm->ch.map));

  regmap_update_bits(r, INTRBIM(0),
       BIT(sub->swm->rb.map),
       BIT(sub->swm->rb.map));
 } else {
  regmap_write(r, CDA2D_STRT0,
        CDA2D_STRT0_STOP_STOP | BIT(sub->swm->ch.map));

  regmap_update_bits(r, INTRBIM(0),
       BIT(sub->swm->rb.map),
       0);
 }
}

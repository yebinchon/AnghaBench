
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
struct uniphier_aio_sub {TYPE_4__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_8__ {TYPE_3__ rb; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;


 int BIT (int ) ;
 int CDA2D_RBMXPTRU_PTRU_MASK ;
 int CDA2D_RBMXRDPTR (int ) ;
 int CDA2D_RBMXRDPTRU (int ) ;
 int CDA2D_RDPTRLOAD ;
 int CDA2D_RDPTRLOAD_LSFLAG_STORE ;
 int FIELD_GET (int ,int) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static u64 aiodma_rb_get_rp(struct uniphier_aio_sub *sub)
{
 struct regmap *r = sub->aio->chip->regmap;
 u32 pos_u, pos_l;
 int i;

 regmap_write(r, CDA2D_RDPTRLOAD,
       CDA2D_RDPTRLOAD_LSFLAG_STORE | BIT(sub->swm->rb.map));

 for (i = 0; i < 6; i++)
  regmap_read(r, CDA2D_RBMXRDPTR(sub->swm->rb.map), &pos_l);

 regmap_read(r, CDA2D_RBMXRDPTR(sub->swm->rb.map), &pos_l);
 regmap_read(r, CDA2D_RBMXRDPTRU(sub->swm->rb.map), &pos_u);
 pos_u = FIELD_GET(CDA2D_RBMXPTRU_PTRU_MASK, pos_u);

 return ((u64)pos_u << 32) | pos_l;
}

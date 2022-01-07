
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct uniphier_aio_sub {int threshold; scalar_t__ wr_total; scalar_t__ rd_total; scalar_t__ wr_org; scalar_t__ rd_org; scalar_t__ wr_offs; scalar_t__ rd_offs; TYPE_4__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_8__ {scalar_t__ dir; TYPE_3__ rb; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;


 int BIT (int ) ;
 int CDA2D_RBADRSLOAD ;
 int CDA2D_RBMXBGNADRS (int ) ;
 int CDA2D_RBMXBGNADRSU (int ) ;
 int CDA2D_RBMXCNFG (int ) ;
 int CDA2D_RBMXENDADRS (int ) ;
 int CDA2D_RBMXENDADRSU (int ) ;
 int CDA2D_RBMXIE (int ) ;
 int CDA2D_RBMXIX_REMAIN ;
 int CDA2D_RBMXIX_SPACE ;
 int EINVAL ;
 scalar_t__ PORT_DIR_OUTPUT ;
 int aiodma_rb_set_rp (struct uniphier_aio_sub*,scalar_t__) ;
 int aiodma_rb_set_threshold (struct uniphier_aio_sub*,scalar_t__,int) ;
 int aiodma_rb_set_wp (struct uniphier_aio_sub*,scalar_t__) ;
 int lower_32_bits (scalar_t__) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;
 int upper_32_bits (scalar_t__) ;

int aiodma_rb_set_buffer(struct uniphier_aio_sub *sub, u64 start, u64 end,
    int period)
{
 struct regmap *r = sub->aio->chip->regmap;
 u64 size = end - start;
 int ret;

 if (end < start || period < 0)
  return -EINVAL;

 regmap_write(r, CDA2D_RBMXCNFG(sub->swm->rb.map), 0);
 regmap_write(r, CDA2D_RBMXBGNADRS(sub->swm->rb.map),
       lower_32_bits(start));
 regmap_write(r, CDA2D_RBMXBGNADRSU(sub->swm->rb.map),
       upper_32_bits(start));
 regmap_write(r, CDA2D_RBMXENDADRS(sub->swm->rb.map),
       lower_32_bits(end));
 regmap_write(r, CDA2D_RBMXENDADRSU(sub->swm->rb.map),
       upper_32_bits(end));

 regmap_write(r, CDA2D_RBADRSLOAD, BIT(sub->swm->rb.map));

 ret = aiodma_rb_set_threshold(sub, size, 2 * period);
 if (ret)
  return ret;

 if (sub->swm->dir == PORT_DIR_OUTPUT) {
  aiodma_rb_set_rp(sub, start);
  aiodma_rb_set_wp(sub, end - period);

  regmap_update_bits(r, CDA2D_RBMXIE(sub->swm->rb.map),
       CDA2D_RBMXIX_SPACE,
       CDA2D_RBMXIX_SPACE);
 } else {
  aiodma_rb_set_rp(sub, end - period);
  aiodma_rb_set_wp(sub, start);

  regmap_update_bits(r, CDA2D_RBMXIE(sub->swm->rb.map),
       CDA2D_RBMXIX_REMAIN,
       CDA2D_RBMXIX_REMAIN);
 }

 sub->threshold = 2 * period;
 sub->rd_offs = 0;
 sub->wr_offs = 0;
 sub->rd_org = 0;
 sub->wr_org = 0;
 sub->rd_total = 0;
 sub->wr_total = 0;

 return 0;
}

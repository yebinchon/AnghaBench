
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct uniphier_aio_sub {int rd_offs; int threshold; int wr_offs; int rd_org; int wr_org; int wr_total; int rd_total; scalar_t__ use_mmap; TYPE_1__* swm; } ;
struct TYPE_2__ {scalar_t__ dir; } ;


 scalar_t__ PORT_DIR_OUTPUT ;
 void* aiodma_rb_get_rp (struct uniphier_aio_sub*) ;
 void* aiodma_rb_get_wp (struct uniphier_aio_sub*) ;
 int aiodma_rb_set_rp (struct uniphier_aio_sub*,void*) ;
 int aiodma_rb_set_threshold (struct uniphier_aio_sub*,void*,int) ;
 int aiodma_rb_set_wp (struct uniphier_aio_sub*,void*) ;

void aiodma_rb_sync(struct uniphier_aio_sub *sub, u64 start, u64 size,
      int period)
{
 if (sub->swm->dir == PORT_DIR_OUTPUT) {
  sub->rd_offs = aiodma_rb_get_rp(sub) - start;

  if (sub->use_mmap) {
   sub->threshold = 2 * period;
   aiodma_rb_set_threshold(sub, size, 2 * period);

   sub->wr_offs = sub->rd_offs - period;
   if (sub->rd_offs < period)
    sub->wr_offs += size;
  }
  aiodma_rb_set_wp(sub, sub->wr_offs + start);
 } else {
  sub->wr_offs = aiodma_rb_get_wp(sub) - start;

  if (sub->use_mmap) {
   sub->threshold = 2 * period;
   aiodma_rb_set_threshold(sub, size, 2 * period);

   sub->rd_offs = sub->wr_offs - period;
   if (sub->wr_offs < period)
    sub->rd_offs += size;
  }
  aiodma_rb_set_rp(sub, sub->rd_offs + start);
 }

 sub->rd_total += sub->rd_offs - sub->rd_org;
 if (sub->rd_offs < sub->rd_org)
  sub->rd_total += size;
 sub->wr_total += sub->wr_offs - sub->wr_org;
 if (sub->wr_offs < sub->wr_org)
  sub->wr_total += size;

 sub->rd_org = sub->rd_offs;
 sub->wr_org = sub->wr_offs;
}

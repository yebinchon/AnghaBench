
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct gfs2_rgrpd {scalar_t__ rd_reserved; int rd_extfail_pt; int rd_rstree; } ;
struct gfs2_rbm {struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {scalar_t__ rs_free; struct gfs2_rbm rs_rbm; int rs_node; } ;
struct gfs2_bitmap {int bi_flags; } ;


 int BUG_ON (int) ;
 int GBF_FULL ;
 int RB_CLEAR_NODE (int *) ;
 int TRACE_RS_TREEDEL ;
 int clear_bit (int ,int *) ;
 scalar_t__ gfs2_rbm_from_block (struct gfs2_rbm*,scalar_t__) ;
 scalar_t__ gfs2_rbm_to_block (struct gfs2_rbm*) ;
 int gfs2_rs_active (struct gfs2_blkreserv*) ;
 int rb_erase (int *,int *) ;
 struct gfs2_bitmap* rbm_bi (struct gfs2_rbm*) ;
 int trace_gfs2_rs (struct gfs2_blkreserv*,int ) ;

__attribute__((used)) static void __rs_deltree(struct gfs2_blkreserv *rs)
{
 struct gfs2_rgrpd *rgd;

 if (!gfs2_rs_active(rs))
  return;

 rgd = rs->rs_rbm.rgd;
 trace_gfs2_rs(rs, TRACE_RS_TREEDEL);
 rb_erase(&rs->rs_node, &rgd->rd_rstree);
 RB_CLEAR_NODE(&rs->rs_node);

 if (rs->rs_free) {
  u64 last_block = gfs2_rbm_to_block(&rs->rs_rbm) +
     rs->rs_free - 1;
  struct gfs2_rbm last_rbm = { .rgd = rs->rs_rbm.rgd, };
  struct gfs2_bitmap *start, *last;


  BUG_ON(rs->rs_rbm.rgd->rd_reserved < rs->rs_free);
  rs->rs_rbm.rgd->rd_reserved -= rs->rs_free;




  rgd->rd_extfail_pt += rs->rs_free;
  rs->rs_free = 0;
  if (gfs2_rbm_from_block(&last_rbm, last_block))
   return;
  start = rbm_bi(&rs->rs_rbm);
  last = rbm_bi(&last_rbm);
  do
   clear_bit(GBF_FULL, &start->bi_flags);
  while (start++ != last);
 }
}

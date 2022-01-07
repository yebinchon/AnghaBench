
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct gfs2_rbm {int bii; scalar_t__ offset; TYPE_1__* rgd; } ;
struct gfs2_inode {int i_res; } ;
struct gfs2_extent {scalar_t__ len; struct gfs2_rbm rbm; } ;
struct gfs2_bitmap {int bi_offset; int bi_flags; int bi_bytes; int * bi_clone; struct buffer_head* bi_bh; } ;
struct buffer_head {int * b_data; } ;
struct TYPE_2__ {int rd_length; scalar_t__ rd_extfail_pt; } ;


 scalar_t__ BFITNOENT ;
 int E2BIG ;
 int ENOSPC ;
 int GBF_FULL ;
 int GFS2_BLKST_FREE ;
 int GFS2_BLKST_UNLINKED ;
 int WARN_ON (int) ;
 int buffer_uptodate (struct buffer_head*) ;
 scalar_t__ gfs2_bitfit (int *,int ,scalar_t__,int ) ;
 int gfs2_reservation_check_and_update (struct gfs2_rbm*,struct gfs2_inode const*,scalar_t__,struct gfs2_extent*) ;
 int gfs2_rs_active (int *) ;
 struct gfs2_bitmap* rbm_bi (struct gfs2_rbm*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int gfs2_rbm_find(struct gfs2_rbm *rbm, u8 state, u32 *minext,
    const struct gfs2_inode *ip, bool nowrap)
{
 bool scan_from_start = rbm->bii == 0 && rbm->offset == 0;
 struct buffer_head *bh;
 int last_bii;
 u32 offset;
 u8 *buffer;
 bool wrapped = 0;
 int ret;
 struct gfs2_bitmap *bi;
 struct gfs2_extent maxext = { .rbm.rgd = rbm->rgd, };






 last_bii = rbm->bii - (rbm->offset == 0);

 while(1) {
  bi = rbm_bi(rbm);
  if ((ip == ((void*)0) || !gfs2_rs_active(&ip->i_res)) &&
      test_bit(GBF_FULL, &bi->bi_flags) &&
      (state == GFS2_BLKST_FREE))
   goto next_bitmap;

  bh = bi->bi_bh;
  buffer = bh->b_data + bi->bi_offset;
  WARN_ON(!buffer_uptodate(bh));
  if (state != GFS2_BLKST_UNLINKED && bi->bi_clone)
   buffer = bi->bi_clone + bi->bi_offset;
  offset = gfs2_bitfit(buffer, bi->bi_bytes, rbm->offset, state);
  if (offset == BFITNOENT) {
   if (state == GFS2_BLKST_FREE && rbm->offset == 0)
    set_bit(GBF_FULL, &bi->bi_flags);
   goto next_bitmap;
  }
  rbm->offset = offset;
  if (ip == ((void*)0))
   return 0;

  ret = gfs2_reservation_check_and_update(rbm, ip,
       minext ? *minext : 0,
       &maxext);
  if (ret == 0)
   return 0;
  if (ret > 0)
   goto next_iter;
  if (ret == -E2BIG) {
   rbm->bii = 0;
   rbm->offset = 0;
   goto res_covered_end_of_rgrp;
  }
  return ret;

next_bitmap:
  rbm->offset = 0;
  rbm->bii++;
  if (rbm->bii == rbm->rgd->rd_length)
   rbm->bii = 0;
res_covered_end_of_rgrp:
  if (rbm->bii == 0) {
   if (wrapped)
    break;
   wrapped = 1;
   if (nowrap)
    break;
  }
next_iter:

  if (wrapped && rbm->bii > last_bii)
   break;
 }

 if (minext == ((void*)0) || state != GFS2_BLKST_FREE)
  return -ENOSPC;




 if (wrapped && (scan_from_start || rbm->bii > last_bii) &&
     *minext < rbm->rgd->rd_extfail_pt)
  rbm->rgd->rd_extfail_pt = *minext;



 if (maxext.len) {
  *rbm = maxext.rbm;
  *minext = maxext.len;
  return 0;
 }

 return -ENOSPC;
}

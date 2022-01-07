
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ ar_rgrplvb; } ;
struct gfs2_sbd {int sd_rindex_uptodate; int sd_rindex; TYPE_1__ sd_args; } ;
struct gfs2_rgrpd {int rd_flags; scalar_t__ rd_extfail_pt; int rd_gl; } ;
struct TYPE_6__ {int i_mode; } ;
struct TYPE_5__ {struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {TYPE_2__ rs_rbm; } ;
struct gfs2_inode {int i_rgd_gh; int i_no_addr; TYPE_3__ i_inode; int i_goal; struct gfs2_blkreserv i_res; } ;
struct gfs2_alloc_parms {scalar_t__ target; int aflags; scalar_t__ min_target; scalar_t__ allowed; } ;


 int EBADSLT ;
 int EINVAL ;
 int ENOSPC ;
 int GFS2_AF_ORLOV ;
 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_LFC_INPLACE_RESERVE ;
 int GFS2_LOG_HEAD_FLUSH_NORMAL ;
 int GFS2_RDF_CHECK ;
 int GFS2_RDF_ERROR ;
 int GFS2_RGF_NOALLOC ;
 struct gfs2_sbd* GFS2_SB (TYPE_3__*) ;
 int GL_SKIP ;
 int LM_ST_EXCLUSIVE ;
 int NO_BLOCK ;
 scalar_t__ S_ISDIR (int ) ;
 int check_and_update_goal (struct gfs2_inode*) ;
 int fast_to_acquire (struct gfs2_rgrpd*) ;
 scalar_t__ gfs2_assert_warn (struct gfs2_sbd*,scalar_t__) ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,int ,int) ;
 int gfs2_glock_dq_uninit (int *) ;
 int gfs2_glock_is_locked_by_me (int ) ;
 int gfs2_glock_nq_init (int ,int ,int,int *) ;
 int gfs2_log_flush (struct gfs2_sbd*,int *,int) ;
 scalar_t__ gfs2_orlov_skip (struct gfs2_inode*) ;
 int gfs2_rgrp_bh_get (struct gfs2_rgrpd*) ;
 scalar_t__ gfs2_rgrp_congested (struct gfs2_rgrpd*,int) ;
 scalar_t__ gfs2_rgrp_used_recently (struct gfs2_blkreserv*,int) ;
 int gfs2_ri_update (struct gfs2_inode*) ;
 scalar_t__ gfs2_rs_active (struct gfs2_blkreserv*) ;
 int gfs2_rs_deltree (struct gfs2_blkreserv*) ;
 scalar_t__ gfs2_select_rgrp (struct gfs2_rgrpd**,struct gfs2_rgrpd*) ;
 int rg_mblk_search (struct gfs2_rgrpd*,struct gfs2_inode*,struct gfs2_alloc_parms*) ;
 scalar_t__ rgd_free (struct gfs2_rgrpd*,struct gfs2_blkreserv*) ;
 scalar_t__ rgrp_contains_block (struct gfs2_rgrpd*,int ) ;
 int try_rgrp_unlink (struct gfs2_rgrpd*,int *,int ) ;
 scalar_t__ unlikely (int) ;
 int update_rgrp_lvb (struct gfs2_rgrpd*) ;

int gfs2_inplace_reserve(struct gfs2_inode *ip, struct gfs2_alloc_parms *ap)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_rgrpd *begin = ((void*)0);
 struct gfs2_blkreserv *rs = &ip->i_res;
 int error = 0, rg_locked, flags = 0;
 u64 last_unlinked = NO_BLOCK;
 int loops = 0;
 u32 free_blocks, skip = 0;

 if (sdp->sd_args.ar_rgrplvb)
  flags |= GL_SKIP;
 if (gfs2_assert_warn(sdp, ap->target))
  return -EINVAL;
 if (gfs2_rs_active(rs)) {
  begin = rs->rs_rbm.rgd;
 } else if (rs->rs_rbm.rgd &&
     rgrp_contains_block(rs->rs_rbm.rgd, ip->i_goal)) {
  begin = rs->rs_rbm.rgd;
 } else {
  check_and_update_goal(ip);
  rs->rs_rbm.rgd = begin = gfs2_blk2rgrpd(sdp, ip->i_goal, 1);
 }
 if (S_ISDIR(ip->i_inode.i_mode) && (ap->aflags & GFS2_AF_ORLOV))
  skip = gfs2_orlov_skip(ip);
 if (rs->rs_rbm.rgd == ((void*)0))
  return -EBADSLT;

 while (loops < 3) {
  rg_locked = 1;

  if (!gfs2_glock_is_locked_by_me(rs->rs_rbm.rgd->rd_gl)) {
   rg_locked = 0;
   if (skip && skip--)
    goto next_rgrp;
   if (!gfs2_rs_active(rs)) {
    if (loops == 0 &&
        !fast_to_acquire(rs->rs_rbm.rgd))
     goto next_rgrp;
    if ((loops < 2) &&
        gfs2_rgrp_used_recently(rs, 1000) &&
        gfs2_rgrp_congested(rs->rs_rbm.rgd, loops))
     goto next_rgrp;
   }
   error = gfs2_glock_nq_init(rs->rs_rbm.rgd->rd_gl,
         LM_ST_EXCLUSIVE, flags,
         &ip->i_rgd_gh);
   if (unlikely(error))
    return error;
   if (!gfs2_rs_active(rs) && (loops < 2) &&
       gfs2_rgrp_congested(rs->rs_rbm.rgd, loops))
    goto skip_rgrp;
   if (sdp->sd_args.ar_rgrplvb) {
    error = update_rgrp_lvb(rs->rs_rbm.rgd);
    if (unlikely(error)) {
     gfs2_glock_dq_uninit(&ip->i_rgd_gh);
     return error;
    }
   }
  }


  if ((rs->rs_rbm.rgd->rd_flags & (GFS2_RGF_NOALLOC |
       GFS2_RDF_ERROR)) ||
      (loops == 0 && ap->target > rs->rs_rbm.rgd->rd_extfail_pt))
   goto skip_rgrp;

  if (sdp->sd_args.ar_rgrplvb)
   gfs2_rgrp_bh_get(rs->rs_rbm.rgd);


  if (!gfs2_rs_active(rs))
   rg_mblk_search(rs->rs_rbm.rgd, ip, ap);


  if (!gfs2_rs_active(rs) && (loops < 1))
   goto check_rgrp;


  free_blocks = rgd_free(rs->rs_rbm.rgd, rs);
  if (free_blocks >= ap->target ||
      (loops == 2 && ap->min_target &&
       free_blocks >= ap->min_target)) {
   ap->allowed = free_blocks;
   return 0;
  }
check_rgrp:

  if (rs->rs_rbm.rgd->rd_flags & GFS2_RDF_CHECK)
   try_rgrp_unlink(rs->rs_rbm.rgd, &last_unlinked,
     ip->i_no_addr);
skip_rgrp:

  if (gfs2_rs_active(rs))
   gfs2_rs_deltree(rs);


  if (!rg_locked)
   gfs2_glock_dq_uninit(&ip->i_rgd_gh);
next_rgrp:

  if (gfs2_select_rgrp(&rs->rs_rbm.rgd, begin))
   continue;
  if (skip)
   continue;





  loops++;

  if (ip == GFS2_I(sdp->sd_rindex) && !sdp->sd_rindex_uptodate) {
   error = gfs2_ri_update(ip);
   if (error)
    return error;
  }

  if (loops == 2)
   gfs2_log_flush(sdp, ((void*)0), GFS2_LOG_HEAD_FLUSH_NORMAL |
           GFS2_LFC_INPLACE_RESERVE);
 }

 return -ENOSPC;
}

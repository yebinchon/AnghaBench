
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {TYPE_2__* rd_rgl; TYPE_1__* rd_bits; int rd_gl; int rd_free; int rd_dinodes; struct gfs2_sbd* rd_sbd; } ;
struct TYPE_7__ {int i_gid; int i_uid; } ;
struct gfs2_inode {int i_no_addr; TYPE_3__ i_inode; } ;
struct TYPE_8__ {int b_data; } ;
struct TYPE_6__ {int rl_unlinked; } ;
struct TYPE_5__ {TYPE_4__* bi_bh; } ;


 int GFS2_BLKST_FREE ;
 int be32_add_cpu (int *,int) ;
 int gfs2_consist_rgrpd (struct gfs2_rgrpd*) ;
 int gfs2_meta_wipe (struct gfs2_inode*,int ,int) ;
 int gfs2_quota_change (struct gfs2_inode*,int,int ,int ) ;
 int gfs2_rgrp_out (struct gfs2_rgrpd*,int ) ;
 int gfs2_statfs_change (struct gfs2_sbd*,int ,int,int) ;
 int gfs2_trans_add_meta (int ,TYPE_4__*) ;
 int rgblk_free (struct gfs2_sbd*,struct gfs2_rgrpd*,int ,int,int ) ;
 int trace_gfs2_block_alloc (struct gfs2_inode*,struct gfs2_rgrpd*,int ,int,int ) ;

void gfs2_free_di(struct gfs2_rgrpd *rgd, struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = rgd->rd_sbd;

 rgblk_free(sdp, rgd, ip->i_no_addr, 1, GFS2_BLKST_FREE);
 if (!rgd->rd_dinodes)
  gfs2_consist_rgrpd(rgd);
 rgd->rd_dinodes--;
 rgd->rd_free++;

 gfs2_trans_add_meta(rgd->rd_gl, rgd->rd_bits[0].bi_bh);
 gfs2_rgrp_out(rgd, rgd->rd_bits[0].bi_bh->b_data);
 be32_add_cpu(&rgd->rd_rgl->rl_unlinked, -1);

 gfs2_statfs_change(sdp, 0, +1, -1);
 trace_gfs2_block_alloc(ip, rgd, ip->i_no_addr, 1, GFS2_BLKST_FREE);
 gfs2_quota_change(ip, -1, ip->i_inode.i_uid, ip->i_inode.i_gid);
 gfs2_meta_wipe(ip, ip->i_no_addr, 1);
}

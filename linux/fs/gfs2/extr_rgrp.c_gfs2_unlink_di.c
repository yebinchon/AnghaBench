
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {TYPE_2__* rd_rgl; TYPE_1__* rd_bits; int rd_gl; } ;
struct gfs2_inode {int i_no_addr; } ;
struct TYPE_6__ {int b_data; } ;
struct TYPE_5__ {int rl_unlinked; } ;
struct TYPE_4__ {TYPE_3__* bi_bh; } ;


 int GFS2_BLKST_UNLINKED ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int be32_add_cpu (int *,int) ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,int ,int) ;
 int gfs2_rgrp_out (struct gfs2_rgrpd*,int ) ;
 int gfs2_trans_add_meta (int ,TYPE_3__*) ;
 int rgblk_free (struct gfs2_sbd*,struct gfs2_rgrpd*,int ,int,int ) ;
 int trace_gfs2_block_alloc (struct gfs2_inode*,struct gfs2_rgrpd*,int ,int,int ) ;

void gfs2_unlink_di(struct inode *inode)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct gfs2_rgrpd *rgd;
 u64 blkno = ip->i_no_addr;

 rgd = gfs2_blk2rgrpd(sdp, blkno, 1);
 if (!rgd)
  return;
 rgblk_free(sdp, rgd, blkno, 1, GFS2_BLKST_UNLINKED);
 trace_gfs2_block_alloc(ip, rgd, blkno, 1, GFS2_BLKST_UNLINKED);
 gfs2_trans_add_meta(rgd->rd_gl, rgd->rd_bits[0].bi_bh);
 gfs2_rgrp_out(rgd, rgd->rd_bits[0].bi_bh->b_data);
 be32_add_cpu(&rgd->rd_rgl->rl_unlinked, 1);
}

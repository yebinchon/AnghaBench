
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {TYPE_1__* rd_bits; int rd_gl; int rd_flags; int rd_free; } ;
struct gfs2_inode {scalar_t__ i_depth; int i_inode; } ;
struct TYPE_4__ {int b_data; } ;
struct TYPE_3__ {TYPE_2__* bi_bh; } ;


 int GFS2_BLKST_FREE ;
 int GFS2_RGF_TRIMMED ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int gfs2_meta_wipe (struct gfs2_inode*,int ,int ) ;
 int gfs2_rgrp_out (struct gfs2_rgrpd*,int ) ;
 int gfs2_trans_add_meta (int ,TYPE_2__*) ;
 int rgblk_free (struct gfs2_sbd*,struct gfs2_rgrpd*,int ,int ,int ) ;
 int trace_gfs2_block_alloc (struct gfs2_inode*,struct gfs2_rgrpd*,int ,int ,int ) ;

void __gfs2_free_blocks(struct gfs2_inode *ip, struct gfs2_rgrpd *rgd,
   u64 bstart, u32 blen, int meta)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);

 rgblk_free(sdp, rgd, bstart, blen, GFS2_BLKST_FREE);
 trace_gfs2_block_alloc(ip, rgd, bstart, blen, GFS2_BLKST_FREE);
 rgd->rd_free += blen;
 rgd->rd_flags &= ~GFS2_RGF_TRIMMED;
 gfs2_trans_add_meta(rgd->rd_gl, rgd->rd_bits[0].bi_bh);
 gfs2_rgrp_out(rgd, rgd->rd_bits[0].bi_bh->b_data);


 if (meta || ip->i_depth)
  gfs2_meta_wipe(ip, bstart, blen);
}

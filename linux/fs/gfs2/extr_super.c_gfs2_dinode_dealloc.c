
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {TYPE_1__* sd_jdesc; } ;
struct gfs2_rgrpd {int rd_gl; } ;
struct gfs2_inode {int i_no_addr; int i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_2__ {int jd_blocks; } ;


 int EIO ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int LM_ST_EXCLUSIVE ;
 int NO_GID_QUOTA_CHANGE ;
 int NO_UID_QUOTA_CHANGE ;
 scalar_t__ RES_QUOTA ;
 scalar_t__ RES_RG_BIT ;
 scalar_t__ RES_STATFS ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,int ,int) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_final_release_pages (struct gfs2_inode*) ;
 int gfs2_free_di (struct gfs2_rgrpd*,struct gfs2_inode*) ;
 int gfs2_get_inode_blocks (int *) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_quota_hold (struct gfs2_inode*,int ,int ) ;
 int gfs2_quota_unhold (struct gfs2_inode*) ;
 int gfs2_rindex_update (struct gfs2_sbd*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;

__attribute__((used)) static int gfs2_dinode_dealloc(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_rgrpd *rgd;
 struct gfs2_holder gh;
 int error;

 if (gfs2_get_inode_blocks(&ip->i_inode) != 1) {
  gfs2_consist_inode(ip);
  return -EIO;
 }

 error = gfs2_rindex_update(sdp);
 if (error)
  return error;

 error = gfs2_quota_hold(ip, NO_UID_QUOTA_CHANGE, NO_GID_QUOTA_CHANGE);
 if (error)
  return error;

 rgd = gfs2_blk2rgrpd(sdp, ip->i_no_addr, 1);
 if (!rgd) {
  gfs2_consist_inode(ip);
  error = -EIO;
  goto out_qs;
 }

 error = gfs2_glock_nq_init(rgd->rd_gl, LM_ST_EXCLUSIVE, 0, &gh);
 if (error)
  goto out_qs;

 error = gfs2_trans_begin(sdp, RES_RG_BIT + RES_STATFS + RES_QUOTA,
     sdp->sd_jdesc->jd_blocks);
 if (error)
  goto out_rg_gunlock;

 gfs2_free_di(rgd, ip);

 gfs2_final_release_pages(ip);

 gfs2_trans_end(sdp);

out_rg_gunlock:
 gfs2_glock_dq_uninit(&gh);
out_qs:
 gfs2_quota_unhold(ip);
 return error;
}

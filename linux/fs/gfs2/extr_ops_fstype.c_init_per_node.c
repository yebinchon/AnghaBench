
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ ar_spectator; } ;
struct gfs2_sbd {struct inode* sd_sc_inode; struct inode* sd_qc_inode; int sd_sc_gh; int sd_qc_gh; TYPE_2__* sd_jdesc; TYPE_1__ sd_args; int sd_master_dir; } ;
struct gfs2_inode {int i_gl; } ;
struct TYPE_4__ {int jd_jid; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int LM_ST_EXCLUSIVE ;
 int PTR_ERR (struct inode*) ;
 struct inode* d_inode (int ) ;
 int fs_err (struct gfs2_sbd*,char*,int) ;
 int gfs2_glock_dq_uninit (int *) ;
 int gfs2_glock_nq_init (int ,int ,int ,int *) ;
 void* gfs2_lookup_simple (struct inode*,char*) ;
 int iput (struct inode*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int init_per_node(struct gfs2_sbd *sdp, int undo)
{
 struct inode *pn = ((void*)0);
 char buf[30];
 int error = 0;
 struct gfs2_inode *ip;
 struct inode *master = d_inode(sdp->sd_master_dir);

 if (sdp->sd_args.ar_spectator)
  return 0;

 if (undo)
  goto fail_qc_gh;

 pn = gfs2_lookup_simple(master, "per_node");
 if (IS_ERR(pn)) {
  error = PTR_ERR(pn);
  fs_err(sdp, "can't find per_node directory: %d\n", error);
  return error;
 }

 sprintf(buf, "statfs_change%u", sdp->sd_jdesc->jd_jid);
 sdp->sd_sc_inode = gfs2_lookup_simple(pn, buf);
 if (IS_ERR(sdp->sd_sc_inode)) {
  error = PTR_ERR(sdp->sd_sc_inode);
  fs_err(sdp, "can't find local \"sc\" file: %d\n", error);
  goto fail;
 }

 sprintf(buf, "quota_change%u", sdp->sd_jdesc->jd_jid);
 sdp->sd_qc_inode = gfs2_lookup_simple(pn, buf);
 if (IS_ERR(sdp->sd_qc_inode)) {
  error = PTR_ERR(sdp->sd_qc_inode);
  fs_err(sdp, "can't find local \"qc\" file: %d\n", error);
  goto fail_ut_i;
 }

 iput(pn);
 pn = ((void*)0);

 ip = GFS2_I(sdp->sd_sc_inode);
 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_EXCLUSIVE, 0,
       &sdp->sd_sc_gh);
 if (error) {
  fs_err(sdp, "can't lock local \"sc\" file: %d\n", error);
  goto fail_qc_i;
 }

 ip = GFS2_I(sdp->sd_qc_inode);
 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_EXCLUSIVE, 0,
       &sdp->sd_qc_gh);
 if (error) {
  fs_err(sdp, "can't lock local \"qc\" file: %d\n", error);
  goto fail_ut_gh;
 }

 return 0;

fail_qc_gh:
 gfs2_glock_dq_uninit(&sdp->sd_qc_gh);
fail_ut_gh:
 gfs2_glock_dq_uninit(&sdp->sd_sc_gh);
fail_qc_i:
 iput(sdp->sd_qc_inode);
fail_ut_i:
 iput(sdp->sd_sc_inode);
fail:
 iput(pn);
 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_quota_data {int dummy; } ;
struct TYPE_6__ {int i_gid; int i_uid; } ;
struct gfs2_inode {TYPE_2__* i_qadata; TYPE_3__ i_inode; int i_flags; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_5__ {int qa_qd_num; struct gfs2_quota_data** qa_qd; } ;


 int EIO ;
 scalar_t__ GFS2_QUOTA_OFF ;
 struct gfs2_sbd* GFS2_SB (TYPE_3__*) ;
 int GIF_QD_LOCKED ;
 int NO_GID_QUOTA_CHANGE ;
 int NO_UID_QUOTA_CHANGE ;
 scalar_t__ gfs2_assert_warn (struct gfs2_sbd*,int) ;
 int gfs2_quota_unhold (struct gfs2_inode*) ;
 int gfs2_rsqa_alloc (struct gfs2_inode*) ;
 int gid_eq (int ,int ) ;
 int make_kqid_gid (int ) ;
 int make_kqid_uid (int ) ;
 int qdsb_get (struct gfs2_sbd*,int ,struct gfs2_quota_data**) ;
 int test_bit (int ,int *) ;
 int uid_eq (int ,int ) ;

int gfs2_quota_hold(struct gfs2_inode *ip, kuid_t uid, kgid_t gid)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_quota_data **qd;
 int error;

 if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
  return 0;

 if (ip->i_qadata == ((void*)0)) {
  error = gfs2_rsqa_alloc(ip);
  if (error)
   return error;
 }

 qd = ip->i_qadata->qa_qd;

 if (gfs2_assert_warn(sdp, !ip->i_qadata->qa_qd_num) ||
     gfs2_assert_warn(sdp, !test_bit(GIF_QD_LOCKED, &ip->i_flags)))
  return -EIO;

 error = qdsb_get(sdp, make_kqid_uid(ip->i_inode.i_uid), qd);
 if (error)
  goto out;
 ip->i_qadata->qa_qd_num++;
 qd++;

 error = qdsb_get(sdp, make_kqid_gid(ip->i_inode.i_gid), qd);
 if (error)
  goto out;
 ip->i_qadata->qa_qd_num++;
 qd++;

 if (!uid_eq(uid, NO_UID_QUOTA_CHANGE) &&
     !uid_eq(uid, ip->i_inode.i_uid)) {
  error = qdsb_get(sdp, make_kqid_uid(uid), qd);
  if (error)
   goto out;
  ip->i_qadata->qa_qd_num++;
  qd++;
 }

 if (!gid_eq(gid, NO_GID_QUOTA_CHANGE) &&
     !gid_eq(gid, ip->i_inode.i_gid)) {
  error = qdsb_get(sdp, make_kqid_gid(gid), qd);
  if (error)
   goto out;
  ip->i_qadata->qa_qd_num++;
  qd++;
 }

out:
 if (error)
  gfs2_quota_unhold(ip);
 return error;
}

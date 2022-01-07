
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_quota_data {int dummy; } ;
struct gfs2_inode {TYPE_2__* i_qadata; int i_flags; int i_inode; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_4__ {size_t qa_qd_num; int * qa_qd_ghs; struct gfs2_quota_data** qa_qd; } ;


 int CAP_SYS_RESOURCE ;
 scalar_t__ GFS2_QUOTA_ON ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int GIF_QD_LOCKED ;
 int NO_FORCE ;
 scalar_t__ capable (int ) ;
 int do_glock (struct gfs2_quota_data*,int ,int *) ;
 int gfs2_glock_dq_uninit (int *) ;
 int gfs2_quota_hold (struct gfs2_inode*,int ,int ) ;
 int gfs2_quota_unhold (struct gfs2_inode*) ;
 int set_bit (int ,int *) ;
 int sort (struct gfs2_quota_data**,size_t,int,int ,int *) ;
 int sort_qd ;

int gfs2_quota_lock(struct gfs2_inode *ip, kuid_t uid, kgid_t gid)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_quota_data *qd;
 u32 x;
 int error = 0;

 if (capable(CAP_SYS_RESOURCE) ||
     sdp->sd_args.ar_quota != GFS2_QUOTA_ON)
  return 0;

 error = gfs2_quota_hold(ip, uid, gid);
 if (error)
  return error;

 sort(ip->i_qadata->qa_qd, ip->i_qadata->qa_qd_num,
      sizeof(struct gfs2_quota_data *), sort_qd, ((void*)0));

 for (x = 0; x < ip->i_qadata->qa_qd_num; x++) {
  qd = ip->i_qadata->qa_qd[x];
  error = do_glock(qd, NO_FORCE, &ip->i_qadata->qa_qd_ghs[x]);
  if (error)
   break;
 }

 if (!error)
  set_bit(GIF_QD_LOCKED, &ip->i_flags);
 else {
  while (x--)
   gfs2_glock_dq_uninit(&ip->i_qadata->qa_qd_ghs[x]);
  gfs2_quota_unhold(ip);
 }

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int qd_flags; int qd_change_sync; } ;
struct gfs2_inode {TYPE_1__* i_qadata; int i_flags; int i_inode; } ;
struct TYPE_2__ {size_t qa_qd_num; int * qa_qd_ghs; struct gfs2_quota_data** qa_qd; } ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int GIF_QD_LOCKED ;
 int QDF_LOCKED ;
 scalar_t__ bh_get (struct gfs2_quota_data*) ;
 int clear_bit (int ,int *) ;
 int do_sync (unsigned int,struct gfs2_quota_data**) ;
 int gfs2_assert_warn (struct gfs2_sbd*,int ) ;
 int gfs2_glock_dq_uninit (int *) ;
 int gfs2_quota_unhold (struct gfs2_inode*) ;
 int need_sync (struct gfs2_quota_data*) ;
 int qd_check_sync (struct gfs2_sbd*,struct gfs2_quota_data*,int *) ;
 int qd_lock ;
 int qd_put (struct gfs2_quota_data*) ;
 int qd_unlock (struct gfs2_quota_data*) ;
 int slot_put (struct gfs2_quota_data*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;

void gfs2_quota_unlock(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_quota_data *qda[4];
 unsigned int count = 0;
 u32 x;
 int found;

 if (!test_and_clear_bit(GIF_QD_LOCKED, &ip->i_flags))
  goto out;

 for (x = 0; x < ip->i_qadata->qa_qd_num; x++) {
  struct gfs2_quota_data *qd;
  int sync;

  qd = ip->i_qadata->qa_qd[x];
  sync = need_sync(qd);

  gfs2_glock_dq_uninit(&ip->i_qadata->qa_qd_ghs[x]);
  if (!sync)
   continue;

  spin_lock(&qd_lock);
  found = qd_check_sync(sdp, qd, ((void*)0));
  spin_unlock(&qd_lock);

  if (!found)
   continue;

  gfs2_assert_warn(sdp, qd->qd_change_sync);
  if (bh_get(qd)) {
   clear_bit(QDF_LOCKED, &qd->qd_flags);
   slot_put(qd);
   qd_put(qd);
   continue;
  }

  qda[count++] = qd;
 }

 if (count) {
  do_sync(count, qda);
  for (x = 0; x < count; x++)
   qd_unlock(qda[x]);
 }

out:
 gfs2_quota_unhold(ip);
}

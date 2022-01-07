
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct gfs2_sbd {int sd_quota_list; } ;
struct gfs2_quota_data {scalar_t__ qd_sync_gen; int qd_change; int qd_change_sync; int qd_flags; int qd_list; int qd_lockref; } ;


 int QDF_CHANGE ;
 int QDF_LOCKED ;
 int list_move_tail (int *,int *) ;
 int lockref_get_not_dead (int *) ;
 int set_bit (int ,int *) ;
 int slot_hold (struct gfs2_quota_data*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qd_check_sync(struct gfs2_sbd *sdp, struct gfs2_quota_data *qd,
    u64 *sync_gen)
{
 if (test_bit(QDF_LOCKED, &qd->qd_flags) ||
     !test_bit(QDF_CHANGE, &qd->qd_flags) ||
     (sync_gen && (qd->qd_sync_gen >= *sync_gen)))
  return 0;

 if (!lockref_get_not_dead(&qd->qd_lockref))
  return 0;

 list_move_tail(&qd->qd_list, &sdp->sd_quota_list);
 set_bit(QDF_LOCKED, &qd->qd_flags);
 qd->qd_change_sync = qd->qd_change;
 slot_hold(qd);
 return 1;
}

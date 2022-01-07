
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_4__* sd_vfs; TYPE_1__ sd_args; } ;
struct TYPE_7__ {int qb_value; int qb_limit; int qb_warn; } ;
struct gfs2_quota_data {scalar_t__ qd_change; scalar_t__ qd_last_warn; int qd_id; int qd_flags; TYPE_3__ qd_qb; } ;
struct gfs2_inode {TYPE_2__* i_qadata; int i_flags; int i_inode; } ;
struct gfs2_alloc_parms {scalar_t__ allowed; scalar_t__ min_target; scalar_t__ target; } ;
typedef scalar_t__ s64 ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_8__ {int s_dev; } ;
struct TYPE_6__ {size_t qa_qd_num; struct gfs2_quota_data** qa_qd; } ;


 int EDQUOT ;
 scalar_t__ GFS2_QUOTA_ON ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int GIF_QD_LOCKED ;
 int HZ ;
 int QDF_QMSG_QUIET ;
 int QUOTA_NL_BHARDWARN ;
 int QUOTA_NL_BSOFTWARN ;
 scalar_t__ UINT_MAX ;
 scalar_t__ be64_to_cpu (int ) ;
 int gfs2_tune_get (struct gfs2_sbd*,int ) ;
 int gt_quota_warn_period ;
 scalar_t__ jiffies ;
 int make_kqid_gid (int ) ;
 int make_kqid_uid (int ) ;
 int print_message (struct gfs2_quota_data*,char*) ;
 int qd_lock ;
 scalar_t__ qid_eq (int ,int ) ;
 int quota_send_warning (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;

int gfs2_quota_check(struct gfs2_inode *ip, kuid_t uid, kgid_t gid,
       struct gfs2_alloc_parms *ap)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_quota_data *qd;
 s64 value, warn, limit;
 u32 x;
 int error = 0;

 ap->allowed = UINT_MAX;
 if (!test_bit(GIF_QD_LOCKED, &ip->i_flags))
  return 0;

        if (sdp->sd_args.ar_quota != GFS2_QUOTA_ON)
                return 0;

 for (x = 0; x < ip->i_qadata->qa_qd_num; x++) {
  qd = ip->i_qadata->qa_qd[x];

  if (!(qid_eq(qd->qd_id, make_kqid_uid(uid)) ||
        qid_eq(qd->qd_id, make_kqid_gid(gid))))
   continue;

  warn = (s64)be64_to_cpu(qd->qd_qb.qb_warn);
  limit = (s64)be64_to_cpu(qd->qd_qb.qb_limit);
  value = (s64)be64_to_cpu(qd->qd_qb.qb_value);
  spin_lock(&qd_lock);
  value += qd->qd_change;
  spin_unlock(&qd_lock);

  if (limit > 0 && (limit - value) < ap->allowed)
   ap->allowed = limit - value;

  if (limit && limit < (value + (s64)ap->target)) {


   if (!ap->min_target || ap->min_target > ap->allowed) {
    if (!test_and_set_bit(QDF_QMSG_QUIET,
            &qd->qd_flags)) {
     print_message(qd, "exceeded");
     quota_send_warning(qd->qd_id,
          sdp->sd_vfs->s_dev,
          QUOTA_NL_BHARDWARN);
    }
    error = -EDQUOT;
    break;
   }
  } else if (warn && warn < value &&
      time_after_eq(jiffies, qd->qd_last_warn +
      gfs2_tune_get(sdp, gt_quota_warn_period)
      * HZ)) {
   quota_send_warning(qd->qd_id,
        sdp->sd_vfs->s_dev, QUOTA_NL_BSOFTWARN);
   error = print_message(qd, "warning");
   qd->qd_last_warn = jiffies;
  }
 }
 return error;
}

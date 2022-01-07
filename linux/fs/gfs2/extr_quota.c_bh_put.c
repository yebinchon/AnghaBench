
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {int sd_quota_mutex; } ;
struct gfs2_quota_data {int * qd_bh_qc; int * qd_bh; int qd_bh_count; TYPE_2__* qd_gl; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct TYPE_4__ {TYPE_1__ gl_name; } ;


 int brelse (int *) ;
 int gfs2_assert (struct gfs2_sbd*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void bh_put(struct gfs2_quota_data *qd)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_name.ln_sbd;

 mutex_lock(&sdp->sd_quota_mutex);
 gfs2_assert(sdp, qd->qd_bh_count);
 if (!--qd->qd_bh_count) {
  brelse(qd->qd_bh);
  qd->qd_bh = ((void*)0);
  qd->qd_bh_qc = ((void*)0);
 }
 mutex_unlock(&sdp->sd_quota_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int qd_lockref; TYPE_2__* qd_gl; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct TYPE_4__ {TYPE_1__ gl_name; } ;


 int __lockref_is_dead (int *) ;
 int gfs2_assert (struct gfs2_sbd*,int) ;
 int lockref_get (int *) ;

__attribute__((used)) static void qd_hold(struct gfs2_quota_data *qd)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_name.ln_sbd;
 gfs2_assert(sdp, !__lockref_is_dead(&qd->qd_lockref));
 lockref_get(&qd->qd_lockref);
}

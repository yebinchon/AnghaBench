
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_quota_data {int qd_flags; TYPE_2__* qd_gl; } ;
struct TYPE_3__ {int ln_sbd; } ;
struct TYPE_4__ {TYPE_1__ gl_name; } ;


 int QDF_LOCKED ;
 int bh_put (struct gfs2_quota_data*) ;
 int clear_bit (int ,int *) ;
 int gfs2_assert_warn (int ,int ) ;
 int qd_put (struct gfs2_quota_data*) ;
 int slot_put (struct gfs2_quota_data*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void qd_unlock(struct gfs2_quota_data *qd)
{
 gfs2_assert_warn(qd->qd_gl->gl_name.ln_sbd,
    test_bit(QDF_LOCKED, &qd->qd_flags));
 clear_bit(QDF_LOCKED, &qd->qd_flags);
 bh_put(qd);
 slot_put(qd);
 qd_put(qd);
}

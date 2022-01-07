
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ count; } ;
struct gfs2_quota_data {TYPE_1__ qd_lockref; int qd_lru; } ;


 int gfs2_qd_lru ;
 int list_lru_add (int *,int *) ;
 scalar_t__ lockref_put_or_lock (TYPE_1__*) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qd_put(struct gfs2_quota_data *qd)
{
 if (lockref_put_or_lock(&qd->qd_lockref))
  return;

 qd->qd_lockref.count = 0;
 list_lru_add(&gfs2_qd_lru, &qd->qd_lru);
 spin_unlock(&qd->qd_lockref.lock);

}

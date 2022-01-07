
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_bitmap_lock; } ;
struct gfs2_quota_data {int qd_slot_count; struct gfs2_sbd* qd_sbd; } ;


 int gfs2_assert (struct gfs2_sbd*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void slot_hold(struct gfs2_quota_data *qd)
{
 struct gfs2_sbd *sdp = qd->qd_sbd;

 spin_lock(&sdp->sd_bitmap_lock);
 gfs2_assert(sdp, qd->qd_slot_count);
 qd->qd_slot_count++;
 spin_unlock(&sdp->sd_bitmap_lock);
}

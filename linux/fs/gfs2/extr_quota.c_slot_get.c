
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {unsigned int sd_quota_slots; int sd_bitmap_lock; int sd_quota_bitmap; } ;
struct gfs2_quota_data {scalar_t__ qd_slot_count; unsigned int qd_slot; struct gfs2_sbd* qd_sbd; } ;


 int ENOSPC ;
 unsigned int find_first_zero_bit (int ,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int slot_get(struct gfs2_quota_data *qd)
{
 struct gfs2_sbd *sdp = qd->qd_sbd;
 unsigned int bit;
 int error = 0;

 spin_lock(&sdp->sd_bitmap_lock);
 if (qd->qd_slot_count != 0)
  goto out;

 error = -ENOSPC;
 bit = find_first_zero_bit(sdp->sd_quota_bitmap, sdp->sd_quota_slots);
 if (bit < sdp->sd_quota_slots) {
  set_bit(bit, sdp->sd_quota_bitmap);
  qd->qd_slot = bit;
  error = 0;
out:
  qd->qd_slot_count++;
 }
 spin_unlock(&sdp->sd_bitmap_lock);

 return error;
}

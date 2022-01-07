
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ceph_osd_client {scalar_t__ epoch_barrier; int lock; } ;


 int down_read (int *) ;
 int down_write (int *) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 int up_write (int *) ;
 int update_epoch_barrier (struct ceph_osd_client*,scalar_t__) ;

void ceph_osdc_update_epoch_barrier(struct ceph_osd_client *osdc, u32 eb)
{
 down_read(&osdc->lock);
 if (unlikely(eb > osdc->epoch_barrier)) {
  up_read(&osdc->lock);
  down_write(&osdc->lock);
  update_epoch_barrier(osdc, eb);
  up_write(&osdc->lock);
 } else {
  up_read(&osdc->lock);
 }
}

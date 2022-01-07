
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_fs_vq {scalar_t__ in_flight; int dispatch_work; int done_work; int lock; } ;


 int WARN_ON (int) ;
 int flush_delayed_work (int *) ;
 int flush_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void virtio_fs_drain_queue(struct virtio_fs_vq *fsvq)
{
 WARN_ON(fsvq->in_flight < 0);


 while (1) {
  spin_lock(&fsvq->lock);
  if (!fsvq->in_flight) {
   spin_unlock(&fsvq->lock);
   break;
  }
  spin_unlock(&fsvq->lock);

  usleep_range(1000, 2000);
 }

 flush_work(&fsvq->done_work);
 flush_delayed_work(&fsvq->dispatch_work);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_fs_vq {int connected; int lock; } ;
struct virtio_fs {int nvqs; struct virtio_fs_vq* vqs; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void virtio_fs_stop_all_queues(struct virtio_fs *fs)
{
 struct virtio_fs_vq *fsvq;
 int i;

 for (i = 0; i < fs->nvqs; i++) {
  fsvq = &fs->vqs[i];
  spin_lock(&fsvq->lock);
  fsvq->connected = 0;
  spin_unlock(&fsvq->lock);
 }
}

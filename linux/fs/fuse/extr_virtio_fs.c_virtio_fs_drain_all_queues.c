
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_fs_vq {int dummy; } ;
struct virtio_fs {int nvqs; struct virtio_fs_vq* vqs; } ;


 int virtio_fs_drain_queue (struct virtio_fs_vq*) ;

__attribute__((used)) static void virtio_fs_drain_all_queues(struct virtio_fs *fs)
{
 struct virtio_fs_vq *fsvq;
 int i;

 for (i = 0; i < fs->nvqs; i++) {
  fsvq = &fs->vqs[i];
  virtio_fs_drain_queue(fsvq);
 }
}

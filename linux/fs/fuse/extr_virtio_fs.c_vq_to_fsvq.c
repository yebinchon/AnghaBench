
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {size_t index; TYPE_1__* vdev; } ;
struct virtio_fs_vq {int dummy; } ;
struct virtio_fs {struct virtio_fs_vq* vqs; } ;
struct TYPE_2__ {struct virtio_fs* priv; } ;



__attribute__((used)) static inline struct virtio_fs_vq *vq_to_fsvq(struct virtqueue *vq)
{
 struct virtio_fs *fs = vq->vdev->priv;

 return &fs->vqs[vq->index];
}

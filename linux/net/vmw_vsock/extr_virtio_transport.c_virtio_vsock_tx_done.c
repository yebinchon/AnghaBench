
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_vsock {int tx_work; } ;
struct TYPE_2__ {struct virtio_vsock* priv; } ;


 int queue_work (int ,int *) ;
 int virtio_vsock_workqueue ;

__attribute__((used)) static void virtio_vsock_tx_done(struct virtqueue *vq)
{
 struct virtio_vsock *vsock = vq->vdev->priv;

 if (!vsock)
  return;
 queue_work(virtio_vsock_workqueue, &vsock->tx_work);
}

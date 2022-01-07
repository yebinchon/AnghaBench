
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtio_vsock {int queued_replies; struct virtqueue** vqs; } ;


 size_t VSOCK_VQ_RX ;
 int atomic_read (int *) ;
 int smp_rmb () ;
 int virtqueue_get_vring_size (struct virtqueue*) ;

__attribute__((used)) static bool virtio_transport_more_replies(struct virtio_vsock *vsock)
{
 struct virtqueue *vq = vsock->vqs[VSOCK_VQ_RX];
 int val;

 smp_rmb();
 val = atomic_read(&vsock->queued_replies);

 return val < virtqueue_get_vring_size(vq);
}

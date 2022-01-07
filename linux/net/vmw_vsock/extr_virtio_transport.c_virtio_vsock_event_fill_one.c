
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtio_vsock_event {int dummy; } ;
struct virtio_vsock {struct virtqueue** vqs; } ;
struct scatterlist {int dummy; } ;


 int GFP_KERNEL ;
 size_t VSOCK_VQ_EVENT ;
 int sg_init_one (struct scatterlist*,struct virtio_vsock_event*,int) ;
 int virtqueue_add_inbuf (struct virtqueue*,struct scatterlist*,int,struct virtio_vsock_event*,int ) ;

__attribute__((used)) static int virtio_vsock_event_fill_one(struct virtio_vsock *vsock,
           struct virtio_vsock_event *event)
{
 struct scatterlist sg;
 struct virtqueue *vq;

 vq = vsock->vqs[VSOCK_VQ_EVENT];

 sg_init_one(&sg, event, sizeof(*event));

 return virtqueue_add_inbuf(vq, &sg, 1, event, GFP_KERNEL);
}

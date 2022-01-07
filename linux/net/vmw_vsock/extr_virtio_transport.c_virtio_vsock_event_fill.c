
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_vsock_event {int dummy; } ;
struct virtio_vsock {int * vqs; struct virtio_vsock_event* event_list; } ;


 size_t ARRAY_SIZE (struct virtio_vsock_event*) ;
 size_t VSOCK_VQ_EVENT ;
 int virtio_vsock_event_fill_one (struct virtio_vsock*,struct virtio_vsock_event*) ;
 int virtqueue_kick (int ) ;

__attribute__((used)) static void virtio_vsock_event_fill(struct virtio_vsock *vsock)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(vsock->event_list); i++) {
  struct virtio_vsock_event *event = &vsock->event_list[i];

  virtio_vsock_event_fill_one(vsock, event);
 }

 virtqueue_kick(vsock->vqs[VSOCK_VQ_EVENT]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_vsock_event {int id; } ;
struct virtio_vsock {int dummy; } ;



 int le32_to_cpu (int ) ;
 int virtio_vsock_reset_sock ;
 int virtio_vsock_update_guest_cid (struct virtio_vsock*) ;
 int vsock_for_each_connected_socket (int ) ;

__attribute__((used)) static void virtio_vsock_event_handle(struct virtio_vsock *vsock,
          struct virtio_vsock_event *event)
{
 switch (le32_to_cpu(event->id)) {
 case 128:
  virtio_vsock_update_guest_cid(vsock);
  vsock_for_each_connected_socket(virtio_vsock_reset_sock);
  break;
 }
}

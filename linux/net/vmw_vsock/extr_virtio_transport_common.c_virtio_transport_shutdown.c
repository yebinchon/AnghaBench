
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct virtio_vsock_pkt_info {int flags; struct vsock_sock* vsk; int type; int op; } ;


 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int VIRTIO_VSOCK_OP_SHUTDOWN ;
 int VIRTIO_VSOCK_SHUTDOWN_RCV ;
 int VIRTIO_VSOCK_SHUTDOWN_SEND ;
 int VIRTIO_VSOCK_TYPE_STREAM ;
 int virtio_transport_send_pkt_info (struct vsock_sock*,struct virtio_vsock_pkt_info*) ;

int virtio_transport_shutdown(struct vsock_sock *vsk, int mode)
{
 struct virtio_vsock_pkt_info info = {
  .op = VIRTIO_VSOCK_OP_SHUTDOWN,
  .type = VIRTIO_VSOCK_TYPE_STREAM,
  .flags = (mode & RCV_SHUTDOWN ?
     VIRTIO_VSOCK_SHUTDOWN_RCV : 0) |
    (mode & SEND_SHUTDOWN ?
     VIRTIO_VSOCK_SHUTDOWN_SEND : 0),
  .vsk = vsk,
 };

 return virtio_transport_send_pkt_info(vsk, &info);
}

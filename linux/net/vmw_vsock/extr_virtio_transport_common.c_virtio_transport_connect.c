
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct virtio_vsock_pkt_info {struct vsock_sock* vsk; int type; int op; } ;


 int VIRTIO_VSOCK_OP_REQUEST ;
 int VIRTIO_VSOCK_TYPE_STREAM ;
 int virtio_transport_send_pkt_info (struct vsock_sock*,struct virtio_vsock_pkt_info*) ;

int virtio_transport_connect(struct vsock_sock *vsk)
{
 struct virtio_vsock_pkt_info info = {
  .op = VIRTIO_VSOCK_OP_REQUEST,
  .type = VIRTIO_VSOCK_TYPE_STREAM,
  .vsk = vsk,
 };

 return virtio_transport_send_pkt_info(vsk, &info);
}

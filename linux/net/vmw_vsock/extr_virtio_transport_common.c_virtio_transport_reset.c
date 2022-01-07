
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct virtio_vsock_pkt_info {scalar_t__ op; int reply; struct vsock_sock* vsk; int type; } ;
struct TYPE_2__ {int op; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;


 scalar_t__ VIRTIO_VSOCK_OP_RST ;
 int VIRTIO_VSOCK_TYPE_STREAM ;
 scalar_t__ le16_to_cpu (int ) ;
 int virtio_transport_send_pkt_info (struct vsock_sock*,struct virtio_vsock_pkt_info*) ;

__attribute__((used)) static int virtio_transport_reset(struct vsock_sock *vsk,
      struct virtio_vsock_pkt *pkt)
{
 struct virtio_vsock_pkt_info info = {
  .op = VIRTIO_VSOCK_OP_RST,
  .type = VIRTIO_VSOCK_TYPE_STREAM,
  .reply = !!pkt,
  .vsk = vsk,
 };


 if (pkt && le16_to_cpu(pkt->hdr.op) == VIRTIO_VSOCK_OP_RST)
  return 0;

 return virtio_transport_send_pkt_info(vsk, &info);
}

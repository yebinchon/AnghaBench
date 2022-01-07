
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct virtio_vsock_pkt_info {int reply; struct vsock_sock* vsk; int remote_port; int remote_cid; int type; int op; } ;
struct TYPE_2__ {int src_port; int src_cid; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;


 int VIRTIO_VSOCK_OP_RESPONSE ;
 int VIRTIO_VSOCK_TYPE_STREAM ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int virtio_transport_send_pkt_info (struct vsock_sock*,struct virtio_vsock_pkt_info*) ;

__attribute__((used)) static int
virtio_transport_send_response(struct vsock_sock *vsk,
          struct virtio_vsock_pkt *pkt)
{
 struct virtio_vsock_pkt_info info = {
  .op = VIRTIO_VSOCK_OP_RESPONSE,
  .type = VIRTIO_VSOCK_TYPE_STREAM,
  .remote_cid = le64_to_cpu(pkt->hdr.src_cid),
  .remote_port = le32_to_cpu(pkt->hdr.src_port),
  .reply = 1,
  .vsk = vsk,
 };

 return virtio_transport_send_pkt_info(vsk, &info);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_vsock_pkt_info {scalar_t__ op; scalar_t__ type; int reply; } ;
struct TYPE_2__ {int src_port; int src_cid; int dst_port; int dst_cid; int op; int type; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct virtio_transport {int (* send_pkt ) (struct virtio_vsock_pkt*) ;} ;


 int ENOMEM ;
 int ENOTCONN ;
 scalar_t__ VIRTIO_VSOCK_OP_RST ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int stub1 (struct virtio_vsock_pkt*) ;
 struct virtio_vsock_pkt* virtio_transport_alloc_pkt (struct virtio_vsock_pkt_info*,int ,int ,int ,int ,int ) ;
 int virtio_transport_free_pkt (struct virtio_vsock_pkt*) ;
 struct virtio_transport* virtio_transport_get_ops () ;

__attribute__((used)) static int virtio_transport_reset_no_sock(struct virtio_vsock_pkt *pkt)
{
 const struct virtio_transport *t;
 struct virtio_vsock_pkt *reply;
 struct virtio_vsock_pkt_info info = {
  .op = VIRTIO_VSOCK_OP_RST,
  .type = le16_to_cpu(pkt->hdr.type),
  .reply = 1,
 };


 if (le16_to_cpu(pkt->hdr.op) == VIRTIO_VSOCK_OP_RST)
  return 0;

 reply = virtio_transport_alloc_pkt(&info, 0,
        le64_to_cpu(pkt->hdr.dst_cid),
        le32_to_cpu(pkt->hdr.dst_port),
        le64_to_cpu(pkt->hdr.src_cid),
        le32_to_cpu(pkt->hdr.src_port));
 if (!reply)
  return -ENOMEM;

 t = virtio_transport_get_ops();
 if (!t) {
  virtio_transport_free_pkt(reply);
  return -ENOTCONN;
 }

 return t->send_pkt(reply);
}

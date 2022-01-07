
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int op; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sock {int dummy; } ;


 scalar_t__ VIRTIO_VSOCK_OP_RST ;
 scalar_t__ le16_to_cpu (int ) ;
 int virtio_transport_do_close (struct vsock_sock*,int) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static void
virtio_transport_recv_disconnecting(struct sock *sk,
        struct virtio_vsock_pkt *pkt)
{
 struct vsock_sock *vsk = vsock_sk(sk);

 if (le16_to_cpu(pkt->hdr.op) == VIRTIO_VSOCK_OP_RST)
  virtio_transport_do_close(vsk, 1);
}

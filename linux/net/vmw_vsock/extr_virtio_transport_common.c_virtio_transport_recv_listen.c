
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int remote_addr; int local_addr; } ;
struct TYPE_2__ {int src_port; int src_cid; int dst_port; int dst_cid; int op; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sock {int (* sk_data_ready ) (struct sock*) ;int sk_state; int sk_ack_backlog; int sk_type; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SINGLE_DEPTH_NESTING ;
 int TCP_ESTABLISHED ;
 scalar_t__ VIRTIO_VSOCK_OP_REQUEST ;
 struct sock* __vsock_create (int ,int *,struct sock*,int ,int ,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int lock_sock_nested (struct sock*,int ) ;
 int release_sock (struct sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int virtio_transport_reset (struct vsock_sock*,struct virtio_vsock_pkt*) ;
 int virtio_transport_send_response (struct vsock_sock*,struct virtio_vsock_pkt*) ;
 int vsock_addr_init (int *,int ,int ) ;
 int vsock_enqueue_accept (struct sock*,struct sock*) ;
 int vsock_insert_connected (struct vsock_sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int
virtio_transport_recv_listen(struct sock *sk, struct virtio_vsock_pkt *pkt)
{
 struct vsock_sock *vsk = vsock_sk(sk);
 struct vsock_sock *vchild;
 struct sock *child;

 if (le16_to_cpu(pkt->hdr.op) != VIRTIO_VSOCK_OP_REQUEST) {
  virtio_transport_reset(vsk, pkt);
  return -EINVAL;
 }

 if (sk_acceptq_is_full(sk)) {
  virtio_transport_reset(vsk, pkt);
  return -ENOMEM;
 }

 child = __vsock_create(sock_net(sk), ((void*)0), sk, GFP_KERNEL,
          sk->sk_type, 0);
 if (!child) {
  virtio_transport_reset(vsk, pkt);
  return -ENOMEM;
 }

 sk->sk_ack_backlog++;

 lock_sock_nested(child, SINGLE_DEPTH_NESTING);

 child->sk_state = TCP_ESTABLISHED;

 vchild = vsock_sk(child);
 vsock_addr_init(&vchild->local_addr, le64_to_cpu(pkt->hdr.dst_cid),
   le32_to_cpu(pkt->hdr.dst_port));
 vsock_addr_init(&vchild->remote_addr, le64_to_cpu(pkt->hdr.src_cid),
   le32_to_cpu(pkt->hdr.src_port));

 vsock_insert_connected(vchild);
 vsock_enqueue_accept(sk, child);
 virtio_transport_send_response(vchild, pkt);

 release_sock(child);

 sk->sk_data_ready(sk);
 return 0;
}

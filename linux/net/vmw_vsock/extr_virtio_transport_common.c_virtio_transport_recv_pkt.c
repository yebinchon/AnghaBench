
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int svm_cid; } ;
struct vsock_sock {TYPE_2__ local_addr; } ;
struct TYPE_3__ {int type; int fwd_cnt; int buf_alloc; int flags; int op; int len; int dst_port; int dst_cid; int src_port; int src_cid; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sockaddr_vm {int svm_cid; int svm_port; } ;
struct sock {int sk_state; int (* sk_write_space ) (struct sock*) ;} ;






 scalar_t__ VIRTIO_VSOCK_TYPE_STREAM ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int trace_virtio_transport_recv_pkt (int ,int ,int ,int ,int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 int virtio_transport_free_pkt (struct virtio_vsock_pkt*) ;
 int virtio_transport_recv_connected (struct sock*,struct virtio_vsock_pkt*) ;
 int virtio_transport_recv_connecting (struct sock*,struct virtio_vsock_pkt*) ;
 int virtio_transport_recv_disconnecting (struct sock*,struct virtio_vsock_pkt*) ;
 int virtio_transport_recv_listen (struct sock*,struct virtio_vsock_pkt*) ;
 int virtio_transport_reset_no_sock (struct virtio_vsock_pkt*) ;
 int virtio_transport_space_update (struct sock*,struct virtio_vsock_pkt*) ;
 int vsock_addr_init (struct sockaddr_vm*,int ,int ) ;
 struct sock* vsock_find_bound_socket (struct sockaddr_vm*) ;
 struct sock* vsock_find_connected_socket (struct sockaddr_vm*,struct sockaddr_vm*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

void virtio_transport_recv_pkt(struct virtio_vsock_pkt *pkt)
{
 struct sockaddr_vm src, dst;
 struct vsock_sock *vsk;
 struct sock *sk;
 bool space_available;

 vsock_addr_init(&src, le64_to_cpu(pkt->hdr.src_cid),
   le32_to_cpu(pkt->hdr.src_port));
 vsock_addr_init(&dst, le64_to_cpu(pkt->hdr.dst_cid),
   le32_to_cpu(pkt->hdr.dst_port));

 trace_virtio_transport_recv_pkt(src.svm_cid, src.svm_port,
     dst.svm_cid, dst.svm_port,
     le32_to_cpu(pkt->hdr.len),
     le16_to_cpu(pkt->hdr.type),
     le16_to_cpu(pkt->hdr.op),
     le32_to_cpu(pkt->hdr.flags),
     le32_to_cpu(pkt->hdr.buf_alloc),
     le32_to_cpu(pkt->hdr.fwd_cnt));

 if (le16_to_cpu(pkt->hdr.type) != VIRTIO_VSOCK_TYPE_STREAM) {
  (void)virtio_transport_reset_no_sock(pkt);
  goto free_pkt;
 }




 sk = vsock_find_connected_socket(&src, &dst);
 if (!sk) {
  sk = vsock_find_bound_socket(&dst);
  if (!sk) {
   (void)virtio_transport_reset_no_sock(pkt);
   goto free_pkt;
  }
 }

 vsk = vsock_sk(sk);

 space_available = virtio_transport_space_update(sk, pkt);

 lock_sock(sk);


 vsk->local_addr.svm_cid = dst.svm_cid;

 if (space_available)
  sk->sk_write_space(sk);

 switch (sk->sk_state) {
 case 129:
  virtio_transport_recv_listen(sk, pkt);
  virtio_transport_free_pkt(pkt);
  break;
 case 128:
  virtio_transport_recv_connecting(sk, pkt);
  virtio_transport_free_pkt(pkt);
  break;
 case 130:
  virtio_transport_recv_connected(sk, pkt);
  break;
 case 131:
  virtio_transport_recv_disconnecting(sk, pkt);
  virtio_transport_free_pkt(pkt);
  break;
 default:
  virtio_transport_free_pkt(pkt);
  break;
 }
 release_sock(sk);




 sock_put(sk);
 return;

free_pkt:
 virtio_transport_free_pkt(pkt);
}

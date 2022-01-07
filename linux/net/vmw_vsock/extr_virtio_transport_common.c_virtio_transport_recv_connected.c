
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int peer_shutdown; } ;
struct TYPE_2__ {int flags; int op; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int (* sk_write_space ) (struct sock*) ;int (* sk_data_ready ) (struct sock*) ;} ;


 int EINVAL ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCK_DONE ;




 int VIRTIO_VSOCK_SHUTDOWN_RCV ;
 int VIRTIO_VSOCK_SHUTDOWN_SEND ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int stub3 (struct sock*) ;
 int virtio_transport_do_close (struct vsock_sock*,int) ;
 int virtio_transport_free_pkt (struct virtio_vsock_pkt*) ;
 int virtio_transport_recv_enqueue (struct vsock_sock*,struct virtio_vsock_pkt*) ;
 int virtio_transport_reset (struct vsock_sock*,int *) ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 int vsock_stream_has_data (struct vsock_sock*) ;

__attribute__((used)) static int
virtio_transport_recv_connected(struct sock *sk,
    struct virtio_vsock_pkt *pkt)
{
 struct vsock_sock *vsk = vsock_sk(sk);
 int err = 0;

 switch (le16_to_cpu(pkt->hdr.op)) {
 case 129:
  virtio_transport_recv_enqueue(vsk, pkt);
  sk->sk_data_ready(sk);
  return err;
 case 131:
  sk->sk_write_space(sk);
  break;
 case 128:
  if (le32_to_cpu(pkt->hdr.flags) & VIRTIO_VSOCK_SHUTDOWN_RCV)
   vsk->peer_shutdown |= RCV_SHUTDOWN;
  if (le32_to_cpu(pkt->hdr.flags) & VIRTIO_VSOCK_SHUTDOWN_SEND)
   vsk->peer_shutdown |= SEND_SHUTDOWN;
  if (vsk->peer_shutdown == SHUTDOWN_MASK &&
      vsock_stream_has_data(vsk) <= 0 &&
      !sock_flag(sk, SOCK_DONE)) {
   (void)virtio_transport_reset(vsk, ((void*)0));

   virtio_transport_do_close(vsk, 1);
  }
  if (le32_to_cpu(pkt->hdr.flags))
   sk->sk_state_change(sk);
  break;
 case 130:
  virtio_transport_do_close(vsk, 1);
  break;
 default:
  err = -EINVAL;
  break;
 }

 virtio_transport_free_pkt(pkt);
 return err;
}

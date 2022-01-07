
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;


 scalar_t__ TCP_ESTABLISHED ;
 int vsock_block_update_write_window (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 scalar_t__ vsock_stream_has_data (struct vsock_sock*) ;

__attribute__((used)) static int
vmci_transport_notify_pkt_poll_in(struct sock *sk,
      size_t target, bool *data_ready_now)
{
 struct vsock_sock *vsk = vsock_sk(sk);

 if (vsock_stream_has_data(vsk)) {
  *data_ready_now = 1;
 } else {




  if (sk->sk_state == TCP_ESTABLISHED)
   vsock_block_update_write_window(sk);
  *data_ready_now = 0;
 }

 return 0;
}

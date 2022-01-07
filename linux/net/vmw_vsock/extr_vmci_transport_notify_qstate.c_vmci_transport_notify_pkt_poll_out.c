
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct sock {int dummy; } ;
typedef scalar_t__ s64 ;


 struct vsock_sock* vsock_sk (struct sock*) ;
 scalar_t__ vsock_stream_has_space (struct vsock_sock*) ;

__attribute__((used)) static int
vmci_transport_notify_pkt_poll_out(struct sock *sk,
       size_t target, bool *space_avail_now)
{
 s64 produce_q_free_space;
 struct vsock_sock *vsk = vsock_sk(sk);

 produce_q_free_space = vsock_stream_has_space(vsk);
 if (produce_q_free_space > 0) {
  *space_avail_now = 1;
  return 0;
 } else if (produce_q_free_space == 0) {



  *space_avail_now = 0;
 }

 return 0;
}

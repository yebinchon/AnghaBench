
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; int sk_userlocks; TYPE_1__* sk_prot; } ;
struct TYPE_4__ {int icsk_bind_hash; } ;
struct TYPE_3__ {int (* unhash ) (struct sock*) ;} ;


 int BPF_SOCK_OPS_STATE_CB ;
 int BPF_SOCK_OPS_STATE_CB_FLAG ;
 scalar_t__ BPF_SOCK_OPS_TEST_FLAG (int ,int ) ;
 scalar_t__ BPF_TCP_CLOSE ;
 scalar_t__ BPF_TCP_CLOSE_WAIT ;
 scalar_t__ BPF_TCP_CLOSING ;
 scalar_t__ BPF_TCP_ESTABLISHED ;
 scalar_t__ BPF_TCP_FIN_WAIT1 ;
 scalar_t__ BPF_TCP_FIN_WAIT2 ;
 scalar_t__ BPF_TCP_LAST_ACK ;
 scalar_t__ BPF_TCP_LISTEN ;
 scalar_t__ BPF_TCP_MAX_STATES ;
 scalar_t__ BPF_TCP_NEW_SYN_RECV ;
 scalar_t__ BPF_TCP_SYN_RECV ;
 scalar_t__ BPF_TCP_SYN_SENT ;
 scalar_t__ BPF_TCP_TIME_WAIT ;
 int BUILD_BUG_ON (int) ;
 int SOCK_BINDPORT_LOCK ;

 int TCP_CLOSE_WAIT ;
 scalar_t__ TCP_CLOSING ;
 int TCP_DEC_STATS (int ,int ) ;

 scalar_t__ TCP_FIN_WAIT1 ;
 scalar_t__ TCP_FIN_WAIT2 ;
 int TCP_INC_STATS (int ,int ) ;
 scalar_t__ TCP_LAST_ACK ;
 scalar_t__ TCP_LISTEN ;
 scalar_t__ TCP_MAX_STATES ;
 int TCP_MIB_CURRESTAB ;
 int TCP_MIB_ESTABRESETS ;
 scalar_t__ TCP_NEW_SYN_RECV ;
 scalar_t__ TCP_SYN_RECV ;
 scalar_t__ TCP_SYN_SENT ;
 scalar_t__ TCP_TIME_WAIT ;
 TYPE_2__* inet_csk (struct sock*) ;
 int inet_put_port (struct sock*) ;
 int inet_sk_state_store (struct sock*,int) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int tcp_call_bpf_2arg (struct sock*,int ,int,int) ;
 int tcp_sk (struct sock*) ;

void tcp_set_state(struct sock *sk, int state)
{
 int oldstate = sk->sk_state;
 BUILD_BUG_ON((int)BPF_TCP_ESTABLISHED != (int)128);
 BUILD_BUG_ON((int)BPF_TCP_SYN_SENT != (int)TCP_SYN_SENT);
 BUILD_BUG_ON((int)BPF_TCP_SYN_RECV != (int)TCP_SYN_RECV);
 BUILD_BUG_ON((int)BPF_TCP_FIN_WAIT1 != (int)TCP_FIN_WAIT1);
 BUILD_BUG_ON((int)BPF_TCP_FIN_WAIT2 != (int)TCP_FIN_WAIT2);
 BUILD_BUG_ON((int)BPF_TCP_TIME_WAIT != (int)TCP_TIME_WAIT);
 BUILD_BUG_ON((int)BPF_TCP_CLOSE != (int)129);
 BUILD_BUG_ON((int)BPF_TCP_CLOSE_WAIT != (int)TCP_CLOSE_WAIT);
 BUILD_BUG_ON((int)BPF_TCP_LAST_ACK != (int)TCP_LAST_ACK);
 BUILD_BUG_ON((int)BPF_TCP_LISTEN != (int)TCP_LISTEN);
 BUILD_BUG_ON((int)BPF_TCP_CLOSING != (int)TCP_CLOSING);
 BUILD_BUG_ON((int)BPF_TCP_NEW_SYN_RECV != (int)TCP_NEW_SYN_RECV);
 BUILD_BUG_ON((int)BPF_TCP_MAX_STATES != (int)TCP_MAX_STATES);

 if (BPF_SOCK_OPS_TEST_FLAG(tcp_sk(sk), BPF_SOCK_OPS_STATE_CB_FLAG))
  tcp_call_bpf_2arg(sk, BPF_SOCK_OPS_STATE_CB, oldstate, state);

 switch (state) {
 case 128:
  if (oldstate != 128)
   TCP_INC_STATS(sock_net(sk), TCP_MIB_CURRESTAB);
  break;

 case 129:
  if (oldstate == TCP_CLOSE_WAIT || oldstate == 128)
   TCP_INC_STATS(sock_net(sk), TCP_MIB_ESTABRESETS);

  sk->sk_prot->unhash(sk);
  if (inet_csk(sk)->icsk_bind_hash &&
      !(sk->sk_userlocks & SOCK_BINDPORT_LOCK))
   inet_put_port(sk);

 default:
  if (oldstate == 128)
   TCP_DEC_STATS(sock_net(sk), TCP_MIB_CURRESTAB);
 }




 inet_sk_state_store(sk, state);
}

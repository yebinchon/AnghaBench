
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int SOCK_KEEPOPEN ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 int inet_csk_delete_keepalive_timer (struct sock*) ;
 int inet_csk_reset_keepalive_timer (struct sock*,int ) ;
 int keepalive_time_when (int ) ;
 int sock_flag (struct sock*,int ) ;
 int tcp_sk (struct sock*) ;

void tcp_set_keepalive(struct sock *sk, int val)
{
 if ((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_LISTEN))
  return;

 if (val && !sock_flag(sk, SOCK_KEEPOPEN))
  inet_csk_reset_keepalive_timer(sk, keepalive_time_when(tcp_sk(sk)));
 else if (!val)
  inet_csk_delete_keepalive_timer(sk);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_congestion_ops {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct inet_connection_sock {int icsk_ca_setsockopt; int icsk_ca_priv; struct tcp_congestion_ops const* icsk_ca_ops; } ;


 scalar_t__ TCP_CLOSE ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int memset (int ,int ,int) ;
 int tcp_cleanup_congestion_control (struct sock*) ;
 int tcp_init_congestion_control (struct sock*) ;

__attribute__((used)) static void tcp_reinit_congestion_control(struct sock *sk,
       const struct tcp_congestion_ops *ca)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 tcp_cleanup_congestion_control(sk);
 icsk->icsk_ca_ops = ca;
 icsk->icsk_ca_setsockopt = 1;
 memset(icsk->icsk_ca_priv, 0, sizeof(icsk->icsk_ca_priv));

 if (sk->sk_state != TCP_CLOSE)
  tcp_init_congestion_control(sk);
}

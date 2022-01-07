
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_congestion_ops {int flags; int owner; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int tcp_congestion_control; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_connection_sock {int icsk_ca_priv; struct tcp_congestion_ops const* icsk_ca_ops; } ;


 int INET_ECN_dontxmit (struct sock*) ;
 int INET_ECN_xmit (struct sock*) ;
 int TCP_CONG_NEEDS_ECN ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int memset (int ,int ,int) ;
 struct tcp_congestion_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct net* sock_net (struct sock*) ;
 struct tcp_congestion_ops tcp_reno ;
 int try_module_get (int ) ;
 scalar_t__ unlikely (int) ;

void tcp_assign_congestion_control(struct sock *sk)
{
 struct net *net = sock_net(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);
 const struct tcp_congestion_ops *ca;

 rcu_read_lock();
 ca = rcu_dereference(net->ipv4.tcp_congestion_control);
 if (unlikely(!try_module_get(ca->owner)))
  ca = &tcp_reno;
 icsk->icsk_ca_ops = ca;
 rcu_read_unlock();

 memset(icsk->icsk_ca_priv, 0, sizeof(icsk->icsk_ca_priv));
 if (ca->flags & TCP_CONG_NEEDS_ECN)
  INET_ECN_xmit(sk);
 else
  INET_ECN_dontxmit(sk);
}

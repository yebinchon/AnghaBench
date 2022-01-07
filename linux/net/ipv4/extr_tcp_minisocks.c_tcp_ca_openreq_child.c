
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_congestion_ops {int owner; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {struct tcp_congestion_ops const* icsk_ca_ops; int icsk_ca_setsockopt; int icsk_ca_dst_locked; } ;
struct dst_entry {int dummy; } ;


 int RTAX_CC_ALGO ;
 int TCP_CA_Open ;
 scalar_t__ TCP_CA_UNSPEC ;
 scalar_t__ dst_metric (struct dst_entry const*,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 scalar_t__ likely (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int tcp_assign_congestion_control (struct sock*) ;
 int tcp_ca_dst_locked (struct dst_entry const*) ;
 struct tcp_congestion_ops* tcp_ca_find_key (scalar_t__) ;
 int tcp_set_ca_state (struct sock*,int ) ;
 scalar_t__ try_module_get (int ) ;

void tcp_ca_openreq_child(struct sock *sk, const struct dst_entry *dst)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 u32 ca_key = dst_metric(dst, RTAX_CC_ALGO);
 bool ca_got_dst = 0;

 if (ca_key != TCP_CA_UNSPEC) {
  const struct tcp_congestion_ops *ca;

  rcu_read_lock();
  ca = tcp_ca_find_key(ca_key);
  if (likely(ca && try_module_get(ca->owner))) {
   icsk->icsk_ca_dst_locked = tcp_ca_dst_locked(dst);
   icsk->icsk_ca_ops = ca;
   ca_got_dst = 1;
  }
  rcu_read_unlock();
 }


 if (!ca_got_dst &&
     (!icsk->icsk_ca_setsockopt ||
      !try_module_get(icsk->icsk_ca_ops->owner)))
  tcp_assign_congestion_control(sk);

 tcp_set_ca_state(sk, TCP_CA_Open);
}

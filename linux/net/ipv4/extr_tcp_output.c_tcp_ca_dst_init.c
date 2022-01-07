
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_congestion_ops {int owner; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {struct tcp_congestion_ops const* icsk_ca_ops; int icsk_ca_dst_locked; } ;
struct dst_entry {int dummy; } ;


 int RTAX_CC_ALGO ;
 scalar_t__ TCP_CA_UNSPEC ;
 scalar_t__ dst_metric (struct dst_entry const*,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 scalar_t__ likely (int) ;
 int module_put (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int tcp_ca_dst_locked (struct dst_entry const*) ;
 struct tcp_congestion_ops* tcp_ca_find_key (scalar_t__) ;
 scalar_t__ try_module_get (int ) ;

__attribute__((used)) static void tcp_ca_dst_init(struct sock *sk, const struct dst_entry *dst)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 const struct tcp_congestion_ops *ca;
 u32 ca_key = dst_metric(dst, RTAX_CC_ALGO);

 if (ca_key == TCP_CA_UNSPEC)
  return;

 rcu_read_lock();
 ca = tcp_ca_find_key(ca_key);
 if (likely(ca && try_module_get(ca->owner))) {
  module_put(icsk->icsk_ca_ops->owner);
  icsk->icsk_ca_dst_locked = tcp_ca_dst_locked(dst);
  icsk->icsk_ca_ops = ca;
 }
 rcu_read_unlock();
}

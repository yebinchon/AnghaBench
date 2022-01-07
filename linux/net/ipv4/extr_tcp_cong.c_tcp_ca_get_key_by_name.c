
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_congestion_ops {int flags; int key; } ;
struct net {int dummy; } ;


 int TCP_CA_UNSPEC ;
 int TCP_CONG_NEEDS_ECN ;
 int might_sleep () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct tcp_congestion_ops* tcp_ca_find_autoload (struct net*,char const*) ;

u32 tcp_ca_get_key_by_name(struct net *net, const char *name, bool *ecn_ca)
{
 const struct tcp_congestion_ops *ca;
 u32 key = TCP_CA_UNSPEC;

 might_sleep();

 rcu_read_lock();
 ca = tcp_ca_find_autoload(net, name);
 if (ca) {
  key = ca->key;
  *ecn_ca = ca->flags & TCP_CONG_NEEDS_ECN;
 }
 rcu_read_unlock();

 return key;
}

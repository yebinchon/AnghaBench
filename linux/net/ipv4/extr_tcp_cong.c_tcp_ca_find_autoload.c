
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_congestion_ops {int dummy; } ;
struct net {int dummy; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ capable (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int request_module (char*,char const*) ;
 struct tcp_congestion_ops* tcp_ca_find (char const*) ;

__attribute__((used)) static struct tcp_congestion_ops *tcp_ca_find_autoload(struct net *net,
             const char *name)
{
 struct tcp_congestion_ops *ca = tcp_ca_find(name);
 return ca;
}

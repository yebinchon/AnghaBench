
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_congestion_ops {int name; } ;
struct TYPE_2__ {int tcp_congestion_control; } ;
struct net {TYPE_1__ ipv4; } ;


 int TCP_CA_NAME_MAX ;
 struct tcp_congestion_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int strncpy (char*,int ,int ) ;

void tcp_get_default_congestion_control(struct net *net, char *name)
{
 const struct tcp_congestion_ops *ca;

 rcu_read_lock();
 ca = rcu_dereference(net->ipv4.tcp_congestion_control);
 strncpy(name, ca->name, TCP_CA_NAME_MAX);
 rcu_read_unlock();
}

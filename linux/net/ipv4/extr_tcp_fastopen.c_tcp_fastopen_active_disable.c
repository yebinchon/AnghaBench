
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int tfo_active_disable_stamp; int tfo_active_disable_times; } ;
struct net {TYPE_1__ ipv4; } ;


 int LINUX_MIB_TCPFASTOPENBLACKHOLE ;
 int NET_INC_STATS (struct net*,int ) ;
 int atomic_inc (int *) ;
 int jiffies ;
 struct net* sock_net (struct sock*) ;

void tcp_fastopen_active_disable(struct sock *sk)
{
 struct net *net = sock_net(sk);

 atomic_inc(&net->ipv4.tfo_active_disable_times);
 net->ipv4.tfo_active_disable_stamp = jiffies;
 NET_INC_STATS(net, LINUX_MIB_TCPFASTOPENBLACKHOLE);
}

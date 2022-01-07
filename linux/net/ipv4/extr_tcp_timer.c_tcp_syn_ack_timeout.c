
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int ireq_net; } ;


 int LINUX_MIB_TCPTIMEOUTS ;
 int __NET_INC_STATS (struct net*,int ) ;
 TYPE_1__* inet_rsk (struct request_sock const*) ;
 struct net* read_pnet (int *) ;

void tcp_syn_ack_timeout(const struct request_sock *req)
{
 struct net *net = read_pnet(&inet_rsk(req)->ireq_net);

 __NET_INC_STATS(net, LINUX_MIB_TCPTIMEOUTS);
}

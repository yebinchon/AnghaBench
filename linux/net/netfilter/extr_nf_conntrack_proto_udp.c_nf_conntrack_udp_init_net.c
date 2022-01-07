
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_udp_net {int * timeouts; } ;
struct net {int dummy; } ;


 int UDP_CT_MAX ;
 struct nf_udp_net* nf_udp_pernet (struct net*) ;
 int * udp_timeouts ;

void nf_conntrack_udp_init_net(struct net *net)
{
 struct nf_udp_net *un = nf_udp_pernet(net);
 int i;

 for (i = 0; i < UDP_CT_MAX; i++)
  un->timeouts[i] = udp_timeouts[i];
}

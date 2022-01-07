
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_icmp_net {int timeout; } ;
struct net {int dummy; } ;


 int nf_ct_icmpv6_timeout ;
 struct nf_icmp_net* nf_icmpv6_pernet (struct net*) ;

void nf_conntrack_icmpv6_init_net(struct net *net)
{
 struct nf_icmp_net *in = nf_icmpv6_pernet(net);

 in->timeout = nf_ct_icmpv6_timeout;
}

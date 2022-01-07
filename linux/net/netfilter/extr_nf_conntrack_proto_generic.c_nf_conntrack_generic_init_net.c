
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_generic_net {int timeout; } ;
struct net {int dummy; } ;


 int nf_ct_generic_timeout ;
 struct nf_generic_net* nf_generic_pernet (struct net*) ;

void nf_conntrack_generic_init_net(struct net *net)
{
 struct nf_generic_net *gn = nf_generic_pernet(net);

 gn->timeout = nf_ct_generic_timeout;
}

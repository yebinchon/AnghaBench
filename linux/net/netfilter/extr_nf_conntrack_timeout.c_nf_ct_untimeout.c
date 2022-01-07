
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_timeout {int dummy; } ;
struct net {int dummy; } ;


 int nf_ct_iterate_cleanup_net (struct net*,int ,struct nf_ct_timeout*,int ,int ) ;
 int untimeout ;

void nf_ct_untimeout(struct net *net, struct nf_ct_timeout *timeout)
{
 nf_ct_iterate_cleanup_net(net, untimeout, timeout, 0, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fqdir; } ;
struct net {TYPE_1__ nf_frag; } ;


 int fqdir_exit (int ) ;
 int nf_ct_frags6_sysctl_unregister (struct net*) ;

__attribute__((used)) static void nf_ct_net_exit(struct net *net)
{
 nf_ct_frags6_sysctl_unregister(net);
 fqdir_exit(net->nf_frag.fqdir);
}

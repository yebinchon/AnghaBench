
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fqdir; } ;
struct net {TYPE_1__ nf_frag; } ;


 int fqdir_pre_exit (int ) ;

__attribute__((used)) static void nf_ct_net_pre_exit(struct net *net)
{
 fqdir_pre_exit(net->nf_frag.fqdir);
}

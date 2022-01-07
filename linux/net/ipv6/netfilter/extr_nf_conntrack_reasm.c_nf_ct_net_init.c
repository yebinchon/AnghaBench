
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* fqdir; } ;
struct net {TYPE_1__ nf_frag; } ;
struct TYPE_5__ {int timeout; int low_thresh; int high_thresh; } ;


 int IPV6_FRAG_HIGH_THRESH ;
 int IPV6_FRAG_LOW_THRESH ;
 int IPV6_FRAG_TIMEOUT ;
 int fqdir_exit (TYPE_2__*) ;
 int fqdir_init (TYPE_2__**,int *,struct net*) ;
 int nf_ct_frag6_sysctl_register (struct net*) ;
 int nf_frags ;

__attribute__((used)) static int nf_ct_net_init(struct net *net)
{
 int res;

 res = fqdir_init(&net->nf_frag.fqdir, &nf_frags, net);
 if (res < 0)
  return res;

 net->nf_frag.fqdir->high_thresh = IPV6_FRAG_HIGH_THRESH;
 net->nf_frag.fqdir->low_thresh = IPV6_FRAG_LOW_THRESH;
 net->nf_frag.fqdir->timeout = IPV6_FRAG_TIMEOUT;

 res = nf_ct_frag6_sysctl_register(net);
 if (res < 0)
  fqdir_exit(net->nf_frag.fqdir);
 return res;
}

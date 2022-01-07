
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct frag_queue {int dummy; } ;
struct TYPE_4__ {int qsize; int rhash_params; int frags_cache_name; int frag_expire; int * destructor; int constructor; } ;


 int inet_frags_fini (TYPE_1__*) ;
 int inet_frags_init (TYPE_1__*) ;
 int ip6frag_init ;
 int nf_ct_frag6_expire ;
 int nf_ct_net_ops ;
 TYPE_1__ nf_frags ;
 int nf_frags_cache_name ;
 int nfct_rhash_params ;
 int register_pernet_subsys (int *) ;

int nf_ct_frag6_init(void)
{
 int ret = 0;

 nf_frags.constructor = ip6frag_init;
 nf_frags.destructor = ((void*)0);
 nf_frags.qsize = sizeof(struct frag_queue);
 nf_frags.frag_expire = nf_ct_frag6_expire;
 nf_frags.frags_cache_name = nf_frags_cache_name;
 nf_frags.rhash_params = nfct_rhash_params;
 ret = inet_frags_init(&nf_frags);
 if (ret)
  goto out;
 ret = register_pernet_subsys(&nf_ct_net_ops);
 if (ret)
  inet_frags_fini(&nf_frags);

out:
 return ret;
}

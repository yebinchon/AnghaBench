
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int NFPROTO_INET ;
 scalar_t__ enable_hooks ;
 int nf_conntrack_standalone_fini_proc (struct net*) ;
 int nf_conntrack_standalone_fini_sysctl (struct net*) ;
 int nf_ct_netns_put (struct net*,int ) ;

__attribute__((used)) static void nf_conntrack_fini_net(struct net *net)
{
 if (enable_hooks)
  nf_ct_netns_put(net, NFPROTO_INET);

 nf_conntrack_standalone_fini_proc(net);
 nf_conntrack_standalone_fini_sysctl(net);
}

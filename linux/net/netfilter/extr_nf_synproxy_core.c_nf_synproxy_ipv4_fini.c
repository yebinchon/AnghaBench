
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synproxy_net {scalar_t__ hook_ref4; } ;
struct net {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ipv4_synproxy_ops ;
 int nf_unregister_net_hooks (struct net*,int ,int ) ;

void nf_synproxy_ipv4_fini(struct synproxy_net *snet, struct net *net)
{
 snet->hook_ref4--;
 if (snet->hook_ref4 == 0)
  nf_unregister_net_hooks(net, ipv4_synproxy_ops,
     ARRAY_SIZE(ipv4_synproxy_ops));
}

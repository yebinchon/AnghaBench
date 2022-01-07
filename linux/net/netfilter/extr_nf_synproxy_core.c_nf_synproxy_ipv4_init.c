
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synproxy_net {scalar_t__ hook_ref4; } ;
struct net {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ipv4_synproxy_ops ;
 int nf_register_net_hooks (struct net*,int ,int ) ;

int nf_synproxy_ipv4_init(struct synproxy_net *snet, struct net *net)
{
 int err;

 if (snet->hook_ref4 == 0) {
  err = nf_register_net_hooks(net, ipv4_synproxy_ops,
         ARRAY_SIZE(ipv4_synproxy_ops));
  if (err)
   return err;
 }

 snet->hook_ref4++;
 return 0;
}

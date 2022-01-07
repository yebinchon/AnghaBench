
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {scalar_t__ pf; } ;
struct net {int dummy; } ;


 scalar_t__ NFPROTO_INET ;
 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ NFPROTO_IPV6 ;
 int __nf_register_net_hook (struct net*,scalar_t__,struct nf_hook_ops const*) ;
 int __nf_unregister_net_hook (struct net*,scalar_t__,struct nf_hook_ops const*) ;

int nf_register_net_hook(struct net *net, const struct nf_hook_ops *reg)
{
 int err;

 if (reg->pf == NFPROTO_INET) {
  err = __nf_register_net_hook(net, NFPROTO_IPV4, reg);
  if (err < 0)
   return err;

  err = __nf_register_net_hook(net, NFPROTO_IPV6, reg);
  if (err < 0) {
   __nf_unregister_net_hook(net, NFPROTO_IPV4, reg);
   return err;
  }
 } else {
  err = __nf_register_net_hook(net, reg->pf, reg);
  if (err < 0)
   return err;
 }

 return 0;
}

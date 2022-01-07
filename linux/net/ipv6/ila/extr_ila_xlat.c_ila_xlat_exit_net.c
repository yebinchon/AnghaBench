
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ hooks_registered; int locks; int rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;


 int ARRAY_SIZE (int ) ;
 int free_bucket_spinlocks (int ) ;
 int ila_free_cb ;
 int ila_net_id ;
 int ila_nf_hook_ops ;
 struct ila_net* net_generic (struct net*,int ) ;
 int nf_unregister_net_hooks (struct net*,int ,int ) ;
 int rhashtable_free_and_destroy (int *,int ,int *) ;

void ila_xlat_exit_net(struct net *net)
{
 struct ila_net *ilan = net_generic(net, ila_net_id);

 rhashtable_free_and_destroy(&ilan->xlat.rhash_table, ila_free_cb, ((void*)0));

 free_bucket_spinlocks(ilan->xlat.locks);

 if (ilan->xlat.hooks_registered)
  nf_unregister_net_hooks(net, ila_nf_hook_ops,
     ARRAY_SIZE(ila_nf_hook_ops));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct nf_nat_lookup_hook_priv {int entries; } ;
struct nf_nat_hooks_net {scalar_t__ users; struct nf_hook_ops* nat_hook_ops; } ;
struct nf_hook_ops {int hooknum; struct nf_nat_lookup_hook_priv* priv; } ;
struct net {int dummy; } ;
struct nat_net {struct nf_nat_hooks_net* nat_proto_net; } ;


 size_t ARRAY_SIZE (struct nf_nat_hooks_net*) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int kfree (struct nf_hook_ops*) ;
 int kfree_rcu (struct nf_nat_lookup_hook_priv*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nat_net_id ;
 struct nat_net* net_generic (struct net*,int ) ;
 int nf_hook_entries_delete_raw (int *,struct nf_hook_ops const*) ;
 int nf_nat_proto_mutex ;
 int nf_unregister_net_hooks (struct net*,struct nf_hook_ops*,unsigned int) ;
 int rcu_head ;

void nf_nat_unregister_fn(struct net *net, u8 pf, const struct nf_hook_ops *ops,
     unsigned int ops_count)
{
 struct nat_net *nat_net = net_generic(net, nat_net_id);
 struct nf_nat_hooks_net *nat_proto_net;
 struct nf_nat_lookup_hook_priv *priv;
 struct nf_hook_ops *nat_ops;
 int hooknum = ops->hooknum;
 int i;

 if (pf >= ARRAY_SIZE(nat_net->nat_proto_net))
  return;

 nat_proto_net = &nat_net->nat_proto_net[pf];

 mutex_lock(&nf_nat_proto_mutex);
 if (WARN_ON(nat_proto_net->users == 0))
  goto unlock;

 nat_proto_net->users--;

 nat_ops = nat_proto_net->nat_hook_ops;
 for (i = 0; i < ops_count; i++) {
  if (nat_ops[i].hooknum == hooknum) {
   hooknum = i;
   break;
  }
 }
 if (WARN_ON_ONCE(i == ops_count))
  goto unlock;
 priv = nat_ops[hooknum].priv;
 nf_hook_entries_delete_raw(&priv->entries, ops);

 if (nat_proto_net->users == 0) {
  nf_unregister_net_hooks(net, nat_ops, ops_count);

  for (i = 0; i < ops_count; i++) {
   priv = nat_ops[i].priv;
   kfree_rcu(priv, rcu_head);
  }

  nat_proto_net->nat_hook_ops = ((void*)0);
  kfree(nat_ops);
 }
unlock:
 mutex_unlock(&nf_nat_proto_mutex);
}

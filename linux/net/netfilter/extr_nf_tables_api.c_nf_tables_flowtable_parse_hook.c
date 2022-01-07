
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct nft_flowtable {int hooknum; int priority; int ops_len; struct nf_hook_ops* ops; TYPE_2__ data; } ;
struct nft_ctx {int dummy; } ;
struct nf_hook_ops {int hooknum; int priority; struct net_device* dev; int hook; TYPE_2__* priv; int pf; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int hook; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NFPROTO_NETDEV ;
 size_t NFTA_FLOWTABLE_HOOK_DEVS ;
 int NFTA_FLOWTABLE_HOOK_MAX ;
 size_t NFTA_FLOWTABLE_HOOK_NUM ;
 size_t NFTA_FLOWTABLE_HOOK_PRIORITY ;
 int NFT_FLOWTABLE_DEVICE_MAX ;
 int NF_NETDEV_INGRESS ;
 struct nf_hook_ops* kcalloc (int,int,int ) ;
 int nf_tables_parse_devices (struct nft_ctx const*,struct nlattr*,struct net_device**,int*) ;
 int nft_flowtable_hook_policy ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 int ntohl (int ) ;

__attribute__((used)) static int nf_tables_flowtable_parse_hook(const struct nft_ctx *ctx,
       const struct nlattr *attr,
       struct nft_flowtable *flowtable)
{
 struct net_device *dev_array[NFT_FLOWTABLE_DEVICE_MAX];
 struct nlattr *tb[NFTA_FLOWTABLE_HOOK_MAX + 1];
 struct nf_hook_ops *ops;
 int hooknum, priority;
 int err, n = 0, i;

 err = nla_parse_nested_deprecated(tb, NFTA_FLOWTABLE_HOOK_MAX, attr,
       nft_flowtable_hook_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[NFTA_FLOWTABLE_HOOK_NUM] ||
     !tb[NFTA_FLOWTABLE_HOOK_PRIORITY] ||
     !tb[NFTA_FLOWTABLE_HOOK_DEVS])
  return -EINVAL;

 hooknum = ntohl(nla_get_be32(tb[NFTA_FLOWTABLE_HOOK_NUM]));
 if (hooknum != NF_NETDEV_INGRESS)
  return -EINVAL;

 priority = ntohl(nla_get_be32(tb[NFTA_FLOWTABLE_HOOK_PRIORITY]));

 err = nf_tables_parse_devices(ctx, tb[NFTA_FLOWTABLE_HOOK_DEVS],
          dev_array, &n);
 if (err < 0)
  return err;

 ops = kcalloc(n, sizeof(struct nf_hook_ops), GFP_KERNEL);
 if (!ops)
  return -ENOMEM;

 flowtable->hooknum = hooknum;
 flowtable->priority = priority;
 flowtable->ops = ops;
 flowtable->ops_len = n;

 for (i = 0; i < n; i++) {
  flowtable->ops[i].pf = NFPROTO_NETDEV;
  flowtable->ops[i].hooknum = hooknum;
  flowtable->ops[i].priority = priority;
  flowtable->ops[i].priv = &flowtable->data;
  flowtable->ops[i].hook = flowtable->data.type->hook;
  flowtable->ops[i].dev = dev_array[i];
 }

 return err;
}

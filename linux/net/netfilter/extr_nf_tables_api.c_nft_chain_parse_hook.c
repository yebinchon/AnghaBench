
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct nlattr {int dummy; } ;
struct nft_chain_type {int hook_mask; scalar_t__ type; int owner; } ;
struct nft_chain_hook {int num; scalar_t__ priority; struct net_device* dev; struct nft_chain_type const* type; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int commit_mutex; } ;
struct net {TYPE_1__ nft; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int IFNAMSIZ ;
 scalar_t__ IS_ERR (struct nft_chain_type const*) ;
 size_t NFPROTO_NETDEV ;
 size_t NFTA_CHAIN_HOOK ;
 size_t NFTA_CHAIN_TYPE ;
 size_t NFTA_HOOK_DEV ;
 size_t NFTA_HOOK_HOOKNUM ;
 int NFTA_HOOK_MAX ;
 size_t NFTA_HOOK_PRIORITY ;
 size_t NFT_CHAIN_T_DEFAULT ;
 scalar_t__ NFT_CHAIN_T_NAT ;
 scalar_t__ NF_IP_PRI_CONNTRACK ;
 int NF_MAX_HOOKS ;
 int PTR_ERR (struct nft_chain_type const*) ;
 struct net_device* __dev_get_by_name (struct net*,char*) ;
 struct nft_chain_type*** chain_type ;
 int lockdep_assert_held (int *) ;
 int lockdep_nfnl_nft_mutex_not_held () ;
 int module_put (int ) ;
 struct nft_chain_type* nf_tables_chain_type_lookup (struct net*,struct nlattr const* const,size_t,int) ;
 int nft_hook_policy ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const* const,int ,int *) ;
 int nla_strlcpy (char*,struct nlattr*,int) ;
 void* ntohl (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int nft_chain_parse_hook(struct net *net,
    const struct nlattr * const nla[],
    struct nft_chain_hook *hook, u8 family,
    bool autoload)
{
 struct nlattr *ha[NFTA_HOOK_MAX + 1];
 const struct nft_chain_type *type;
 struct net_device *dev;
 int err;

 lockdep_assert_held(&net->nft.commit_mutex);
 lockdep_nfnl_nft_mutex_not_held();

 err = nla_parse_nested_deprecated(ha, NFTA_HOOK_MAX,
       nla[NFTA_CHAIN_HOOK],
       nft_hook_policy, ((void*)0));
 if (err < 0)
  return err;

 if (ha[NFTA_HOOK_HOOKNUM] == ((void*)0) ||
     ha[NFTA_HOOK_PRIORITY] == ((void*)0))
  return -EINVAL;

 hook->num = ntohl(nla_get_be32(ha[NFTA_HOOK_HOOKNUM]));
 hook->priority = ntohl(nla_get_be32(ha[NFTA_HOOK_PRIORITY]));

 type = chain_type[family][NFT_CHAIN_T_DEFAULT];
 if (nla[NFTA_CHAIN_TYPE]) {
  type = nf_tables_chain_type_lookup(net, nla[NFTA_CHAIN_TYPE],
         family, autoload);
  if (IS_ERR(type))
   return PTR_ERR(type);
 }
 if (hook->num > NF_MAX_HOOKS || !(type->hook_mask & (1 << hook->num)))
  return -EOPNOTSUPP;

 if (type->type == NFT_CHAIN_T_NAT &&
     hook->priority <= NF_IP_PRI_CONNTRACK)
  return -EOPNOTSUPP;

 if (!try_module_get(type->owner))
  return -ENOENT;

 hook->type = type;

 hook->dev = ((void*)0);
 if (family == NFPROTO_NETDEV) {
  char ifname[IFNAMSIZ];

  if (!ha[NFTA_HOOK_DEV]) {
   module_put(type->owner);
   return -EOPNOTSUPP;
  }

  nla_strlcpy(ifname, ha[NFTA_HOOK_DEV], IFNAMSIZ);
  dev = __dev_get_by_name(net, ifname);
  if (!dev) {
   module_put(type->owner);
   return -ENOENT;
  }
  hook->dev = dev;
 } else if (ha[NFTA_HOOK_DEV]) {
  module_put(type->owner);
  return -EOPNOTSUPP;
 }

 return 0;
}

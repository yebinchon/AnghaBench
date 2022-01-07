
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;
struct nft_table {int dummy; } ;
struct nft_set {int dummy; } ;
struct net {int dummy; } ;


 scalar_t__ IS_ERR (struct nft_set*) ;
 struct nft_set* nft_set_lookup (struct nft_table const*,struct nlattr const*,int ) ;
 struct nft_set* nft_set_lookup_byid (struct net const*,struct nlattr const*,int ) ;

struct nft_set *nft_set_lookup_global(const struct net *net,
          const struct nft_table *table,
          const struct nlattr *nla_set_name,
          const struct nlattr *nla_set_id,
          u8 genmask)
{
 struct nft_set *set;

 set = nft_set_lookup(table, nla_set_name, genmask);
 if (IS_ERR(set)) {
  if (!nla_set_id)
   return set;

  set = nft_set_lookup_byid(net, nla_set_id, genmask);
 }
 return set;
}

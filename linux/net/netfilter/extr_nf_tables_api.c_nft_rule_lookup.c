
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_rule {int dummy; } ;
struct nft_chain {int dummy; } ;


 int EINVAL ;
 struct nft_rule* ERR_PTR (int ) ;
 struct nft_rule* __nft_rule_lookup (struct nft_chain const*,int ) ;
 int be64_to_cpu (int ) ;
 int nla_get_be64 (struct nlattr const*) ;

__attribute__((used)) static struct nft_rule *nft_rule_lookup(const struct nft_chain *chain,
     const struct nlattr *nla)
{
 if (nla == ((void*)0))
  return ERR_PTR(-EINVAL);

 return __nft_rule_lookup(chain, be64_to_cpu(nla_get_be64(nla)));
}

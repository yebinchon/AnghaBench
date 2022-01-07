
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_rules_old {int dummy; } ;
struct nft_rule {int dummy; } ;
struct nft_chain {int dummy; } ;


 int GFP_KERNEL ;
 unsigned int INT_MAX ;
 struct nft_rule** kvmalloc (unsigned int,int ) ;

__attribute__((used)) static struct nft_rule **nf_tables_chain_alloc_rules(const struct nft_chain *chain,
           unsigned int alloc)
{
 if (alloc > INT_MAX)
  return ((void*)0);

 alloc += 1;
 if (sizeof(struct nft_rule *) > INT_MAX / alloc)
  return ((void*)0);

 alloc *= sizeof(struct nft_rule *);
 alloc += sizeof(struct nft_rules_old);

 return kvmalloc(alloc, GFP_KERNEL);
}

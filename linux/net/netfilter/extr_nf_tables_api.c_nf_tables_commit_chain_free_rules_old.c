
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_rules_old {int h; struct nft_rule** start; } ;
struct nft_rule {int dummy; } ;


 int __nf_tables_commit_chain_free_rules_old ;
 int call_rcu (int *,int ) ;

__attribute__((used)) static void nf_tables_commit_chain_free_rules_old(struct nft_rule **rules)
{
 struct nft_rule **r = rules;
 struct nft_rules_old *old;

 while (*r)
  r++;

 r++;
 old = (void *) r;
 old->start = rules;

 call_rcu(&old->h, __nf_tables_commit_chain_free_rules_old);
}

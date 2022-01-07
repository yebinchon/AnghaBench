
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_binding {int list; } ;
struct nft_set {int list; int bindings; } ;
struct nft_ctx {int dummy; } ;


 int GFP_KERNEL ;
 int NFT_MSG_DELSET ;
 int list_del_rcu (int *) ;
 scalar_t__ list_empty (int *) ;
 int nf_tables_set_notify (struct nft_ctx const*,struct nft_set*,int ,int ) ;
 scalar_t__ nft_set_is_anonymous (struct nft_set*) ;

__attribute__((used)) static void nf_tables_unbind_set(const struct nft_ctx *ctx, struct nft_set *set,
     struct nft_set_binding *binding, bool event)
{
 list_del_rcu(&binding->list);

 if (list_empty(&set->bindings) && nft_set_is_anonymous(set)) {
  list_del_rcu(&set->list);
  if (event)
   nf_tables_set_notify(ctx, set, NFT_MSG_DELSET,
          GFP_KERNEL);
 }
}

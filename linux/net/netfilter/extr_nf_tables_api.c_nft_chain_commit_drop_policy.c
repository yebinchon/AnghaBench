
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chain; } ;
struct nft_trans {TYPE_1__ ctx; } ;
struct nft_base_chain {scalar_t__ policy; } ;


 scalar_t__ NF_DROP ;
 struct nft_base_chain* nft_base_chain (int ) ;
 int nft_is_base_chain (int ) ;
 scalar_t__ nft_trans_chain_policy (struct nft_trans*) ;

__attribute__((used)) static void nft_chain_commit_drop_policy(struct nft_trans *trans)
{
 struct nft_base_chain *basechain;

 if (nft_trans_chain_policy(trans) != NF_DROP)
  return;

 if (!nft_is_base_chain(trans->ctx.chain))
  return;

 basechain = nft_base_chain(trans->ctx.chain);
 basechain->policy = NF_DROP;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xt_match {int me; int matchsize; } ;
struct nlattr {int dummy; } ;
struct nft_xt_match_priv {int dummy; } ;
typedef struct nft_expr_ops {unsigned int size; int dump; int destroy; int init; int eval; struct xt_match* data; int validate; int * type; } const nft_expr_ops ;
struct nft_ctx {int family; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct nft_expr_ops const* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct xt_match*) ;
 size_t NFTA_MATCH_INFO ;
 size_t NFTA_MATCH_NAME ;
 size_t NFTA_MATCH_REV ;
 unsigned int NFT_EXPR_SIZE (int) ;
 unsigned int NFT_MATCH_LARGE_THRESH ;
 int XT_ALIGN (int ) ;
 struct nft_expr_ops const* kzalloc (int,int ) ;
 int module_put (int ) ;
 int nft_match_destroy ;
 int nft_match_dump ;
 int nft_match_eval ;
 int nft_match_init ;
 int nft_match_large_destroy ;
 int nft_match_large_dump ;
 int nft_match_large_eval ;
 int nft_match_large_init ;
 int nft_match_type ;
 int nft_match_validate ;
 char* nla_data (struct nlattr const* const) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int nla_len (struct nlattr const* const) ;
 int ntohl (int ) ;
 struct xt_match* xt_request_find_match (int ,char*,int ) ;

__attribute__((used)) static const struct nft_expr_ops *
nft_match_select_ops(const struct nft_ctx *ctx,
       const struct nlattr * const tb[])
{
 struct nft_expr_ops *ops;
 struct xt_match *match;
 unsigned int matchsize;
 char *mt_name;
 u32 rev, family;
 int err;

 if (tb[NFTA_MATCH_NAME] == ((void*)0) ||
     tb[NFTA_MATCH_REV] == ((void*)0) ||
     tb[NFTA_MATCH_INFO] == ((void*)0))
  return ERR_PTR(-EINVAL);

 mt_name = nla_data(tb[NFTA_MATCH_NAME]);
 rev = ntohl(nla_get_be32(tb[NFTA_MATCH_REV]));
 family = ctx->family;

 match = xt_request_find_match(family, mt_name, rev);
 if (IS_ERR(match))
  return ERR_PTR(-ENOENT);

 if (match->matchsize > nla_len(tb[NFTA_MATCH_INFO])) {
  err = -EINVAL;
  goto err;
 }

 ops = kzalloc(sizeof(struct nft_expr_ops), GFP_KERNEL);
 if (!ops) {
  err = -ENOMEM;
  goto err;
 }

 ops->type = &nft_match_type;
 ops->eval = nft_match_eval;
 ops->init = nft_match_init;
 ops->destroy = nft_match_destroy;
 ops->dump = nft_match_dump;
 ops->validate = nft_match_validate;
 ops->data = match;

 matchsize = NFT_EXPR_SIZE(XT_ALIGN(match->matchsize));
 if (matchsize > NFT_MATCH_LARGE_THRESH) {
  matchsize = NFT_EXPR_SIZE(sizeof(struct nft_xt_match_priv));

  ops->eval = nft_match_large_eval;
  ops->init = nft_match_large_init;
  ops->destroy = nft_match_large_destroy;
  ops->dump = nft_match_large_dump;
 }

 ops->size = matchsize;

 return ops;
err:
 module_put(match->me);
 return ERR_PTR(err);
}

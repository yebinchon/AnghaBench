
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct nlattr const nlattr ;
struct nft_expr_type {int maxattr; int owner; struct nft_expr_type* ops; struct nft_expr_type* (* select_ops ) (struct nft_ctx const*,struct nlattr const* const*) ;int policy; } ;
struct nft_expr_ops {int maxattr; int owner; struct nft_expr_ops* ops; struct nft_expr_type* (* select_ops ) (struct nft_ctx const*,struct nlattr const* const*) ;int policy; } ;
struct nft_expr_info {struct nft_expr_type const* ops; struct nlattr const** tb; } ;
struct nft_ctx {int family; int net; } ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct nft_expr_type const*) ;
 size_t NFTA_EXPR_DATA ;
 int NFTA_EXPR_MAX ;
 size_t NFTA_EXPR_NAME ;
 int PTR_ERR (struct nft_expr_type const*) ;
 int memset (struct nlattr const**,int ,int) ;
 int module_put (int ) ;
 int nft_expr_policy ;
 struct nft_expr_type* nft_expr_type_get (int ,int ,struct nlattr const*) ;
 int nft_expr_type_request_module (int ,int ,struct nlattr const*) ;
 int nla_parse_nested_deprecated (struct nlattr const**,int,struct nlattr const*,int ,int *) ;
 struct nft_expr_type* stub1 (struct nft_ctx const*,struct nlattr const* const*) ;

__attribute__((used)) static int nf_tables_expr_parse(const struct nft_ctx *ctx,
    const struct nlattr *nla,
    struct nft_expr_info *info)
{
 const struct nft_expr_type *type;
 const struct nft_expr_ops *ops;
 struct nlattr *tb[NFTA_EXPR_MAX + 1];
 int err;

 err = nla_parse_nested_deprecated(tb, NFTA_EXPR_MAX, nla,
       nft_expr_policy, ((void*)0));
 if (err < 0)
  return err;

 type = nft_expr_type_get(ctx->net, ctx->family, tb[NFTA_EXPR_NAME]);
 if (IS_ERR(type))
  return PTR_ERR(type);

 if (tb[NFTA_EXPR_DATA]) {
  err = nla_parse_nested_deprecated(info->tb, type->maxattr,
        tb[NFTA_EXPR_DATA],
        type->policy, ((void*)0));
  if (err < 0)
   goto err1;
 } else
  memset(info->tb, 0, sizeof(info->tb[0]) * (type->maxattr + 1));

 if (type->select_ops != ((void*)0)) {
  ops = type->select_ops(ctx,
           (const struct nlattr * const *)info->tb);
  if (IS_ERR(ops)) {
   err = PTR_ERR(ops);






   goto err1;
  }
 } else
  ops = type->ops;

 info->ops = ops;
 return 0;

err1:
 module_put(type->owner);
 return err;
}

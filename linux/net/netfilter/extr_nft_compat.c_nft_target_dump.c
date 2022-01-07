
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_target {int usersize; int targetsize; int revision; int name; } ;
struct sk_buff {int dummy; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct TYPE_2__ {struct xt_target* data; } ;


 int NFTA_TARGET_INFO ;
 int NFTA_TARGET_NAME ;
 int NFTA_TARGET_REV ;
 int htonl (int ) ;
 void* nft_expr_priv (struct nft_expr const*) ;
 scalar_t__ nft_extension_dump_info (struct sk_buff*,int ,void*,int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nft_target_dump(struct sk_buff *skb, const struct nft_expr *expr)
{
 const struct xt_target *target = expr->ops->data;
 void *info = nft_expr_priv(expr);

 if (nla_put_string(skb, NFTA_TARGET_NAME, target->name) ||
     nla_put_be32(skb, NFTA_TARGET_REV, htonl(target->revision)) ||
     nft_extension_dump_info(skb, NFTA_TARGET_INFO, info,
        target->targetsize, target->usersize))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_match {int usersize; int matchsize; int revision; int name; } ;
struct sk_buff {int dummy; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct TYPE_2__ {struct xt_match* data; } ;


 int NFTA_MATCH_INFO ;
 int NFTA_MATCH_NAME ;
 int NFTA_MATCH_REV ;
 int htonl (int ) ;
 scalar_t__ nft_extension_dump_info (struct sk_buff*,int ,void*,int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int __nft_match_dump(struct sk_buff *skb, const struct nft_expr *expr,
       void *info)
{
 struct xt_match *match = expr->ops->data;

 if (nla_put_string(skb, NFTA_MATCH_NAME, match->name) ||
     nla_put_be32(skb, NFTA_MATCH_REV, htonl(match->revision)) ||
     nft_extension_dump_info(skb, NFTA_MATCH_INFO, info,
        match->matchsize, match->usersize))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* u16 ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t NFTA_RULE_COMPAT_FLAGS ;
 int NFTA_RULE_COMPAT_MAX ;
 size_t NFTA_RULE_COMPAT_PROTO ;
 int NFT_RULE_COMPAT_F_INV ;
 int NFT_RULE_COMPAT_F_MASK ;
 int nft_rule_compat_policy ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 void* ntohl (int ) ;

__attribute__((used)) static int nft_parse_compat(const struct nlattr *attr, u16 *proto, bool *inv)
{
 struct nlattr *tb[NFTA_RULE_COMPAT_MAX+1];
 u32 flags;
 int err;

 err = nla_parse_nested_deprecated(tb, NFTA_RULE_COMPAT_MAX, attr,
       nft_rule_compat_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[NFTA_RULE_COMPAT_PROTO] || !tb[NFTA_RULE_COMPAT_FLAGS])
  return -EINVAL;

 flags = ntohl(nla_get_be32(tb[NFTA_RULE_COMPAT_FLAGS]));
 if (flags & ~NFT_RULE_COMPAT_F_MASK)
  return -EINVAL;
 if (flags & NFT_RULE_COMPAT_F_INV)
  *inv = 1;

 *proto = ntohl(nla_get_be32(tb[NFTA_RULE_COMPAT_PROTO]));
 return 0;
}

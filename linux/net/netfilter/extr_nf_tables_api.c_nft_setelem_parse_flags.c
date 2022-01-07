
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_set {int flags; } ;


 int EINVAL ;
 int NFT_SET_ELEM_INTERVAL_END ;
 int NFT_SET_INTERVAL ;
 int nla_get_be32 (struct nlattr const*) ;
 int ntohl (int ) ;

__attribute__((used)) static int nft_setelem_parse_flags(const struct nft_set *set,
       const struct nlattr *attr, u32 *flags)
{
 if (attr == ((void*)0))
  return 0;

 *flags = ntohl(nla_get_be32(attr));
 if (*flags & ~NFT_SET_ELEM_INTERVAL_END)
  return -EINVAL;
 if (!(set->flags & NFT_SET_INTERVAL) &&
     *flags & NFT_SET_ELEM_INTERVAL_END)
  return -EINVAL;

 return 0;
}

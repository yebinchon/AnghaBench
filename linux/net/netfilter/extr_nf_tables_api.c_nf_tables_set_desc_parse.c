
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_set_desc {int size; } ;


 int NFTA_SET_DESC_MAX ;
 size_t NFTA_SET_DESC_SIZE ;
 int nft_set_desc_policy ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 int ntohl (int ) ;

__attribute__((used)) static int nf_tables_set_desc_parse(struct nft_set_desc *desc,
        const struct nlattr *nla)
{
 struct nlattr *da[NFTA_SET_DESC_MAX + 1];
 int err;

 err = nla_parse_nested_deprecated(da, NFTA_SET_DESC_MAX, nla,
       nft_set_desc_policy, ((void*)0));
 if (err < 0)
  return err;

 if (da[NFTA_SET_DESC_SIZE] != ((void*)0))
  desc->size = ntohl(nla_get_be32(da[NFTA_SET_DESC_SIZE]));

 return 0;
}

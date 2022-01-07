
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nla_bitfield32 {int const selector; int const value; } ;


 int EINVAL ;
 struct nla_bitfield32* nla_data (struct nlattr const*) ;

__attribute__((used)) static int validate_nla_bitfield32(const struct nlattr *nla,
       const u32 *valid_flags_mask)
{
 const struct nla_bitfield32 *bf = nla_data(nla);

 if (!valid_flags_mask)
  return -EINVAL;


 if (bf->selector & ~*valid_flags_mask)
  return -EINVAL;


 if (bf->value & ~*valid_flags_mask)
  return -EINVAL;


 if (bf->value & ~bf->selector)
  return -EINVAL;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;


 int ERANGE ;
 int nla_get_be32 (struct nlattr const*) ;
 int ntohl (int ) ;

int nft_parse_u32_check(const struct nlattr *attr, int max, u32 *dest)
{
 u32 val;

 val = ntohl(nla_get_be32(attr));
 if (val > max)
  return -ERANGE;

 *dest = val;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;


 size_t IPSET_ATTR_PROTOCOL ;
 int nla_get_u8 (struct nlattr const* const) ;

__attribute__((used)) static inline u8 protocol(const struct nlattr * const tb[])
{
 return nla_get_u8(tb[IPSET_ATTR_PROTOCOL]);
}

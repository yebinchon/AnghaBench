
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;
 int nla_get_u16 (struct nlattr const*) ;

__attribute__((used)) static __le16 nla_get_shortaddr(const struct nlattr *nla)
{
 return cpu_to_le16(nla_get_u16(nla));
}

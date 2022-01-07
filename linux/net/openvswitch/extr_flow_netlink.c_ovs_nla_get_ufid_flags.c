
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;


 int nla_get_u32 (struct nlattr const*) ;

u32 ovs_nla_get_ufid_flags(const struct nlattr *attr)
{
 return attr ? nla_get_u32(attr) : 0;
}

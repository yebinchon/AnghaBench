
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nlattr {int dummy; } ;


 scalar_t__ libbpf_nla_data (struct nlattr const*) ;

__attribute__((used)) static inline uint32_t libbpf_nla_getattr_u32(const struct nlattr *nla)
{
 return *(uint32_t *)libbpf_nla_data(nla);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nlattr {int dummy; } ;


 scalar_t__ libbpf_nla_data (struct nlattr const*) ;

__attribute__((used)) static inline uint8_t libbpf_nla_getattr_u8(const struct nlattr *nla)
{
 return *(uint8_t *)libbpf_nla_data(nla);
}

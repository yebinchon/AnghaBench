
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 scalar_t__ libbpf_nla_data (struct nlattr const*) ;

__attribute__((used)) static inline const char *libbpf_nla_getattr_str(const struct nlattr *nla)
{
 return (const char *)libbpf_nla_data(nla);
}

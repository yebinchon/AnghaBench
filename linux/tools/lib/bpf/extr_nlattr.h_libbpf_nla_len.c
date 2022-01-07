
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int nla_len; } ;


 int NLA_HDRLEN ;

__attribute__((used)) static inline int libbpf_nla_len(const struct nlattr *nla)
{
 return nla->nla_len - NLA_HDRLEN;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nla_policy {size_t type; scalar_t__ len; } ;


 scalar_t__* nla_attr_len ;
 scalar_t__* nla_attr_minlen ;
 scalar_t__ nla_total_size (scalar_t__) ;

int
nla_policy_len(const struct nla_policy *p, int n)
{
 int i, len = 0;

 for (i = 0; i < n; i++, p++) {
  if (p->len)
   len += nla_total_size(p->len);
  else if (nla_attr_len[p->type])
   len += nla_total_size(nla_attr_len[p->type]);
  else if (nla_attr_minlen[p->type])
   len += nla_total_size(nla_attr_minlen[p->type]);
 }

 return len;
}

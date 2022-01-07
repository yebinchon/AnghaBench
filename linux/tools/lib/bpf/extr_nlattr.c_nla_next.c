
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int nla_len; } ;


 int NLA_ALIGN (int ) ;

__attribute__((used)) static struct nlattr *nla_next(const struct nlattr *nla, int *remaining)
{
 int totlen = NLA_ALIGN(nla->nla_len);

 *remaining -= totlen;
 return (struct nlattr *) ((char *) nla + totlen);
}

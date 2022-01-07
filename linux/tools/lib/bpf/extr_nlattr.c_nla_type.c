
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int nla_type; } ;


 int NLA_TYPE_MASK ;

__attribute__((used)) static int nla_type(const struct nlattr *nla)
{
 return nla->nla_type & NLA_TYPE_MASK;
}

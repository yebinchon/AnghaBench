
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int nla_type; int nla_len; } ;


 int nla_attr_size (int) ;
 scalar_t__ nla_data (struct nlattr*) ;
 int nla_total_size (int) ;

__attribute__((used)) static int put_rtax(struct nlattr *mx, int len, int type, u32 value)
{
 struct nlattr *nla;

 nla = (struct nlattr *) ((char *) mx + len);
 nla->nla_type = type;
 nla->nla_len = nla_attr_size(4);
 *(u32 *) nla_data(nla) = value;

 return len + nla_total_size(4);
}

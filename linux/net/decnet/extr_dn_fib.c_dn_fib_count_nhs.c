
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnexthop {int dummy; } ;
struct nlattr {int dummy; } ;


 struct rtnexthop* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 struct rtnexthop* rtnh_next (struct rtnexthop*,int*) ;
 scalar_t__ rtnh_ok (struct rtnexthop*,int) ;

__attribute__((used)) static int dn_fib_count_nhs(const struct nlattr *attr)
{
 struct rtnexthop *nhp = nla_data(attr);
 int nhs = 0, nhlen = nla_len(attr);

 while (rtnh_ok(nhp, nhlen)) {
  nhs++;
  nhp = rtnh_next(nhp, &nhlen);
 }


 return nhlen > 0 ? 0 : nhs;
}

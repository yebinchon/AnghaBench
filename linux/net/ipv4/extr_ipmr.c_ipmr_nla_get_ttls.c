
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnexthop {int rtnh_hops; } ;
struct nlattr {int dummy; } ;
struct mfcctl {int * mfcc_ttls; } ;


 int EINVAL ;
 int MAXVIFS ;
 struct rtnexthop* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 struct rtnexthop* rtnh_next (struct rtnexthop*,int*) ;
 scalar_t__ rtnh_ok (struct rtnexthop*,int) ;

__attribute__((used)) static int ipmr_nla_get_ttls(const struct nlattr *nla, struct mfcctl *mfcc)
{
 struct rtnexthop *rtnh = nla_data(nla);
 int remaining = nla_len(nla), vifi = 0;

 while (rtnh_ok(rtnh, remaining)) {
  mfcc->mfcc_ttls[vifi] = rtnh->rtnh_hops;
  if (++vifi == MAXVIFS)
   break;
  rtnh = rtnh_next(rtnh, &remaining);
 }

 return remaining > 0 ? -EINVAL : vifi;
}

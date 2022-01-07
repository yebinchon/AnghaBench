
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct nf_conntrack_expect {TYPE_1__ timeout; } ;


 size_t CTA_EXPECT_TIMEOUT ;
 int ETIME ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static int
ctnetlink_change_expect(struct nf_conntrack_expect *x,
   const struct nlattr * const cda[])
{
 if (cda[CTA_EXPECT_TIMEOUT]) {
  if (!del_timer(&x->timeout))
   return -ETIME;

  x->timeout.expires = jiffies +
   ntohl(nla_get_be32(cda[CTA_EXPECT_TIMEOUT])) * HZ;
  add_timer(&x->timeout);
 }
 return 0;
}

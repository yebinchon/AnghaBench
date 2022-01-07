
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct rtable {scalar_t__ rt_genid; TYPE_1__ dst; } ;


 int dev_net (int ) ;
 scalar_t__ rt_genid_ipv4 (int ) ;

__attribute__((used)) static inline bool rt_is_expired(const struct rtable *rth)
{
 return rth->rt_genid != rt_genid_ipv4(dev_net(rth->dst.dev));
}

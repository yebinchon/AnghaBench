
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {struct in6_addr saddr; int daddr; } ;
struct fib_rule {int flags; } ;
struct TYPE_2__ {scalar_t__ plen; int addr; } ;
struct fib6_rule {TYPE_1__ src; } ;


 int EAGAIN ;
 int FIB_RULE_FIND_SADDR ;
 int RT6_LOOKUP_F_HAS_SADDR ;
 scalar_t__ ipv6_dev_get_saddr (struct net*,struct net_device const*,int *,int ,struct in6_addr*) ;
 int ipv6_prefix_equal (struct in6_addr*,int *,scalar_t__) ;
 int rt6_flags2srcprefs (int) ;

__attribute__((used)) static int fib6_rule_saddr(struct net *net, struct fib_rule *rule, int flags,
      struct flowi6 *flp6, const struct net_device *dev)
{
 struct fib6_rule *r = (struct fib6_rule *)rule;




 if ((rule->flags & FIB_RULE_FIND_SADDR) &&
     r->src.plen && !(flags & RT6_LOOKUP_F_HAS_SADDR)) {
  struct in6_addr saddr;

  if (ipv6_dev_get_saddr(net, dev, &flp6->daddr,
           rt6_flags2srcprefs(flags), &saddr))
   return -EAGAIN;

  if (!ipv6_prefix_equal(&saddr, &r->src.addr, r->src.plen))
   return -EAGAIN;

  flp6->saddr = saddr;
 }

 return 0;
}

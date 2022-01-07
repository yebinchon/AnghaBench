
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt6_info {int dst; } ;
struct TYPE_2__ {struct rt6_info* ip6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;


 int dst_hold (int *) ;
 scalar_t__ dst_hold_safe (int *) ;

__attribute__((used)) static bool ip6_hold_safe(struct net *net, struct rt6_info **prt)
{
 struct rt6_info *rt = *prt;

 if (dst_hold_safe(&rt->dst))
  return 1;
 if (net) {
  rt = net->ipv6.ip6_null_entry;
  dst_hold(&rt->dst);
 } else {
  rt = ((void*)0);
 }
 *prt = rt;
 return 0;
}

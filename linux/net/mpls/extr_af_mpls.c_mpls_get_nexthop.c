
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpls_route {int rt_nh_size; scalar_t__ rt_nh; } ;
struct mpls_nh {int dummy; } ;



__attribute__((used)) static struct mpls_nh *mpls_get_nexthop(struct mpls_route *rt, u8 index)
{
 return (struct mpls_nh *)((u8 *)rt->rt_nh + index * rt->rt_nh_size);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpls_route {int rt_via_offset; } ;
struct mpls_nh {int dummy; } ;



__attribute__((used)) static u8 *__mpls_nh_via(struct mpls_route *rt, struct mpls_nh *nh)
{
 return (u8 *)nh + rt->rt_via_offset;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpls_route {int dummy; } ;
struct mpls_nh {int dummy; } ;


 int const* __mpls_nh_via (struct mpls_route*,struct mpls_nh*) ;

__attribute__((used)) static const u8 *mpls_nh_via(const struct mpls_route *rt,
        const struct mpls_nh *nh)
{
 return __mpls_nh_via((struct mpls_route *)rt, (struct mpls_nh *)nh);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fib6_result {TYPE_2__* nh; TYPE_1__* f6i; } ;
struct TYPE_4__ {scalar_t__ fib_nh_gw_family; } ;
struct TYPE_3__ {int fib6_flags; } ;


 int RTF_NONEXTHOP ;

__attribute__((used)) static bool rt6_is_gw_or_nonexthop(const struct fib6_result *res)
{
 return (res->f6i->fib6_flags & RTF_NONEXTHOP) ||
        res->nh->fib_nh_gw_family;
}

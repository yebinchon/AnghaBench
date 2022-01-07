
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nh_info {int family; int fib6_nh; int fib_nh; } ;
struct nexthop {int net; int nh_info; } ;
struct TYPE_2__ {int (* fib6_nh_release ) (int *) ;} ;




 int fib_nh_release (int ,int *) ;
 TYPE_1__* ipv6_stub ;
 int kfree (struct nh_info*) ;
 struct nh_info* rcu_dereference_raw (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void nexthop_free_single(struct nexthop *nh)
{
 struct nh_info *nhi;

 nhi = rcu_dereference_raw(nh->nh_info);
 switch (nhi->family) {
 case 129:
  fib_nh_release(nh->net, &nhi->fib_nh);
  break;
 case 128:
  ipv6_stub->fib6_nh_release(&nhi->fib6_nh);
  break;
 }
 kfree(nhi);
}

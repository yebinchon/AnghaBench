
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct fib6_info {TYPE_1__* fib6_nh; } ;
struct TYPE_2__ {int fib_nh_upper_bound; scalar_t__ fib_nh_weight; } ;


 int DIV_ROUND_CLOSEST_ULL (int,int) ;
 int atomic_set (int *,int) ;
 int rt6_is_dead (struct fib6_info*) ;

__attribute__((used)) static void rt6_upper_bound_set(struct fib6_info *rt, int *weight, int total)
{
 int upper_bound = -1;

 if (!rt6_is_dead(rt)) {
  *weight += rt->fib6_nh->fib_nh_weight;
  upper_bound = DIV_ROUND_CLOSEST_ULL((u64) (*weight) << 31,
          total) - 1;
 }
 atomic_set(&rt->fib6_nh->fib_nh_upper_bound, upper_bound);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int dst; int from; int rt6i_flags; } ;
struct fib6_info {int fib6_metrics; } ;


 int RTF_EXPIRES ;
 int ip_dst_init_metrics (int *,int ) ;
 int rcu_assign_pointer (int ,struct fib6_info*) ;

__attribute__((used)) static void rt6_set_from(struct rt6_info *rt, struct fib6_info *from)
{
 rt->rt6i_flags &= ~RTF_EXPIRES;
 rcu_assign_pointer(rt->from, from);
 ip_dst_init_metrics(&rt->dst, from->fib6_metrics);
}

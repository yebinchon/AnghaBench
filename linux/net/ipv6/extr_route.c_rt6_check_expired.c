
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ obsolete; int expires; } ;
struct rt6_info {int rt6i_flags; TYPE_1__ dst; int from; } ;
struct fib6_info {int dummy; } ;


 scalar_t__ DST_OBSOLETE_FORCE_CHK ;
 int RTF_EXPIRES ;
 scalar_t__ fib6_check_expired (struct fib6_info*) ;
 int jiffies ;
 struct fib6_info* rcu_dereference (int ) ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static bool rt6_check_expired(const struct rt6_info *rt)
{
 struct fib6_info *from;

 from = rcu_dereference(rt->from);

 if (rt->rt6i_flags & RTF_EXPIRES) {
  if (time_after(jiffies, rt->dst.expires))
   return 1;
 } else if (from) {
  return rt->dst.obsolete != DST_OBSOLETE_FORCE_CHK ||
   fib6_check_expired(from);
 }
 return 0;
}

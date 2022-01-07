
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int rt6i_flags; int from; } ;


 int RTF_CACHE ;
 int RTF_PCPU ;
 scalar_t__ rcu_access_pointer (int ) ;

__attribute__((used)) static bool rt6_cache_allowed_for_pmtu(const struct rt6_info *rt)
{
 return !(rt->rt6i_flags & RTF_CACHE) &&
  (rt->rt6i_flags & RTF_PCPU || rcu_access_pointer(rt->from));
}

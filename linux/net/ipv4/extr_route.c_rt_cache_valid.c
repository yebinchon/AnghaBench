
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ obsolete; } ;
struct rtable {TYPE_1__ dst; } ;


 scalar_t__ DST_OBSOLETE_FORCE_CHK ;
 int rt_is_expired (struct rtable const*) ;

__attribute__((used)) static bool rt_cache_valid(const struct rtable *rt)
{
 return rt &&
  rt->dst.obsolete == DST_OBSOLETE_FORCE_CHK &&
  !rt_is_expired(rt);
}

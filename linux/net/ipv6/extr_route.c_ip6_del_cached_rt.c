
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int dummy; } ;
struct fib6_result {struct fib6_nh* nh; struct fib6_info* f6i; } ;
struct fib6_nh {int dummy; } ;
struct fib6_info {int dummy; } ;
struct fib6_config {int fc_src; int fc_dst; } ;


 int __ip6_del_cached_rt (struct rt6_info*,struct fib6_config*) ;
 struct rt6_info* rt6_find_cached_rt (struct fib6_result*,int *,int *) ;

__attribute__((used)) static int ip6_del_cached_rt(struct fib6_config *cfg, struct fib6_info *rt,
        struct fib6_nh *nh)
{
 struct fib6_result res = {
  .f6i = rt,
  .nh = nh,
 };
 struct rt6_info *rt_cache;

 rt_cache = rt6_find_cached_rt(&res, &cfg->fc_dst, &cfg->fc_src);
 if (rt_cache)
  return __ip6_del_cached_rt(rt_cache, cfg);

 return 0;
}

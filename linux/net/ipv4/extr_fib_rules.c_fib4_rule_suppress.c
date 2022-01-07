
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ group; } ;
struct fib_rule {scalar_t__ suppress_prefixlen; int suppress_ifgroup; } ;
struct fib_result {scalar_t__ prefixlen; scalar_t__ fi; } ;
struct fib_nh_common {struct net_device* nhc_dev; } ;
struct fib_lookup_arg {int flags; scalar_t__ result; } ;


 int FIB_LOOKUP_NOREF ;
 struct fib_nh_common* fib_info_nhc (scalar_t__,int ) ;
 int fib_info_put (scalar_t__) ;

__attribute__((used)) static bool fib4_rule_suppress(struct fib_rule *rule, struct fib_lookup_arg *arg)
{
 struct fib_result *result = (struct fib_result *) arg->result;
 struct net_device *dev = ((void*)0);

 if (result->fi) {
  struct fib_nh_common *nhc = fib_info_nhc(result->fi, 0);

  dev = nhc->nhc_dev;
 }




 if (result->prefixlen <= rule->suppress_prefixlen)
  goto suppress_route;




 if (rule->suppress_ifgroup != -1 && dev && dev->group == rule->suppress_ifgroup)
  goto suppress_route;

 return 0;

suppress_route:
 if (!(arg->flags & FIB_LOOKUP_NOREF))
  fib_info_put(result->fi);
 return 1;
}

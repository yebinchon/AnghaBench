
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh_del_cached_rt_arg {int f6i; int cfg; } ;
struct fib6_nh {int dummy; } ;


 int ESRCH ;
 int ip6_del_cached_rt (int ,int ,struct fib6_nh*) ;

__attribute__((used)) static int fib6_nh_del_cached_rt(struct fib6_nh *nh, void *_arg)
{
 struct fib6_nh_del_cached_rt_arg *arg = _arg;
 int rc;

 rc = ip6_del_cached_rt(arg->cfg, arg->f6i, nh);
 return rc != -ESRCH ? rc : 0;
}

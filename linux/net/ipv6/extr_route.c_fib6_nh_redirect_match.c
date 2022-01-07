
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fib6_nh_rd_arg {int ret; int gw; int fl6; TYPE_1__* res; } ;
struct fib6_nh {int dummy; } ;
struct TYPE_2__ {struct fib6_nh* nh; } ;


 int ip6_redirect_nh_match (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int fib6_nh_redirect_match(struct fib6_nh *nh, void *_arg)
{
 struct fib6_nh_rd_arg *arg = _arg;

 arg->res->nh = nh;
 return ip6_redirect_nh_match(arg->res, arg->fl6, arg->gw, arg->ret);
}

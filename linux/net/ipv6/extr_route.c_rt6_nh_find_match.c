
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh_frl_arg {int do_rr; int mpri; int strict; int oif; int flags; struct fib6_nh* nh; } ;
struct fib6_nh {int dummy; } ;


 int find_match (struct fib6_nh*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int rt6_nh_find_match(struct fib6_nh *nh, void *_arg)
{
 struct fib6_nh_frl_arg *arg = _arg;

 arg->nh = nh;
 return find_match(nh, arg->flags, arg->oif, arg->strict,
     arg->mpri, arg->do_rr);
}

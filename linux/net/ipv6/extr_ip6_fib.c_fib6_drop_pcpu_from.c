
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_table {int dummy; } ;
struct fib6_nh_pcpu_arg {struct fib6_table const* table; struct fib6_info* from; } ;
struct fib6_nh {int dummy; } ;
struct fib6_info {int fib6_destroying; struct fib6_nh* fib6_nh; scalar_t__ nh; } ;


 int __fib6_drop_pcpu_from (struct fib6_nh*,struct fib6_info*,struct fib6_table const*) ;
 int fib6_nh_drop_pcpu_from ;
 int mb () ;
 int nexthop_for_each_fib6_nh (scalar_t__,int ,struct fib6_nh_pcpu_arg*) ;

__attribute__((used)) static void fib6_drop_pcpu_from(struct fib6_info *f6i,
    const struct fib6_table *table)
{



 f6i->fib6_destroying = 1;
 mb();

 if (f6i->nh) {
  struct fib6_nh_pcpu_arg arg = {
   .from = f6i,
   .table = table
  };

  nexthop_for_each_fib6_nh(f6i->nh, fib6_nh_drop_pcpu_from,
      &arg);
 } else {
  struct fib6_nh *fib6_nh;

  fib6_nh = f6i->fib6_nh;
  __fib6_drop_pcpu_from(fib6_nh, f6i, table);
 }
}

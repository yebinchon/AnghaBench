
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_libunwind_ops {int dummy; } ;
struct map_groups {struct unwind_libunwind_ops* unwind_libunwind_ops; } ;



__attribute__((used)) static void unwind__register_ops(struct map_groups *mg,
     struct unwind_libunwind_ops *ops)
{
 mg->unwind_libunwind_ops = ops;
}

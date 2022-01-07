
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {scalar_t__ exclude_kernel; } ;
struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ arch_check_bp_in_kernelspace (struct arch_hw_breakpoint*) ;
 int capable (int ) ;
 int hw_breakpoint_arch_parse (struct perf_event*,struct perf_event_attr const*,struct arch_hw_breakpoint*) ;

__attribute__((used)) static int hw_breakpoint_parse(struct perf_event *bp,
          const struct perf_event_attr *attr,
          struct arch_hw_breakpoint *hw)
{
 int err;

 err = hw_breakpoint_arch_parse(bp, attr, hw);
 if (err)
  return err;

 if (arch_check_bp_in_kernelspace(hw)) {
  if (attr->exclude_kernel)
   return -EINVAL;




  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;
 }

 return 0;
}

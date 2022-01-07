
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int arch_uninstall_hw_breakpoint (struct perf_event*) ;

__attribute__((used)) static void hw_breakpoint_del(struct perf_event *bp, int flags)
{
 arch_uninstall_hw_breakpoint(bp);
}

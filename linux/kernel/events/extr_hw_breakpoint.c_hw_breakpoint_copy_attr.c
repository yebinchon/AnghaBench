
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int disabled; int bp_len; int bp_type; int bp_addr; } ;



__attribute__((used)) static void hw_breakpoint_copy_attr(struct perf_event_attr *to,
        struct perf_event_attr *from)
{
 to->bp_addr = from->bp_addr;
 to->bp_type = from->bp_type;
 to->bp_len = from->bp_len;
 to->disabled = from->disabled;
}

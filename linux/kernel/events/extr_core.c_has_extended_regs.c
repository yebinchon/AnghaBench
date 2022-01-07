
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sample_regs_user; int sample_regs_intr; } ;
struct perf_event {TYPE_1__ attr; } ;


 int PERF_REG_EXTENDED_MASK ;

__attribute__((used)) static inline bool has_extended_regs(struct perf_event *event)
{
 return (event->attr.sample_regs_user & PERF_REG_EXTENDED_MASK) ||
        (event->attr.sample_regs_intr & PERF_REG_EXTENDED_MASK);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct seq_file {int dummy; } ;


 int HRTIMER_MAX_CLOCK_BASES ;
 int SEQ_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static inline void timer_list_header(struct seq_file *m, u64 now)
{
 SEQ_printf(m, "Timer List Version: v0.8\n");
 SEQ_printf(m, "HRTIMER_MAX_CLOCK_BASES: %d\n", HRTIMER_MAX_CLOCK_BASES);
 SEQ_printf(m, "now at %Ld nsecs\n", (unsigned long long)now);
 SEQ_printf(m, "\n");
}

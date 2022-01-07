
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct seq_file {int dummy; } ;
struct hrtimer_clock_base {int offset; int get_time; int index; } ;


 int SEQ_printf (struct seq_file*,char*,...) ;
 int hrtimer_resolution ;
 scalar_t__ ktime_to_ns (int ) ;
 int print_active_timers (struct seq_file*,struct hrtimer_clock_base*,scalar_t__) ;
 int print_name_offset (struct seq_file*,int ) ;

__attribute__((used)) static void
print_base(struct seq_file *m, struct hrtimer_clock_base *base, u64 now)
{
 SEQ_printf(m, "  .base:       %pK\n", base);
 SEQ_printf(m, "  .index:      %d\n", base->index);

 SEQ_printf(m, "  .resolution: %u nsecs\n", hrtimer_resolution);

 SEQ_printf(m, "  .get_time:   ");
 print_name_offset(m, base->get_time);
 SEQ_printf(m, "\n");




 SEQ_printf(m, "active timers:\n");
 print_active_timers(m, base, now + ktime_to_ns(base->offset));
}

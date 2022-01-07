
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct perf_event_attr {int sample_regs_intr; int precise_ip; int disabled; int exclude_kernel; int sample_period; int sample_type; int config; int type; } ;


 int PERF_COUNT_HW_CPU_CYCLES ;
 int PERF_REGS_MASK ;
 int PERF_REG_EXTENDED_MASK ;
 int PERF_SAMPLE_REGS_INTR ;
 int PERF_TYPE_HARDWARE ;
 int close (int) ;
 int event_attr_init (struct perf_event_attr*) ;
 int sys_perf_event_open (struct perf_event_attr*,int ,int,int,int ) ;

uint64_t arch__intr_reg_mask(void)
{
 struct perf_event_attr attr = {
  .type = PERF_TYPE_HARDWARE,
  .config = PERF_COUNT_HW_CPU_CYCLES,
  .sample_type = PERF_SAMPLE_REGS_INTR,
  .sample_regs_intr = PERF_REG_EXTENDED_MASK,
  .precise_ip = 1,
  .disabled = 1,
  .exclude_kernel = 1,
 };
 int fd;



 attr.sample_period = 1;

 event_attr_init(&attr);

 fd = sys_perf_event_open(&attr, 0, -1, -1, 0);
 if (fd != -1) {
  close(fd);
  return (PERF_REG_EXTENDED_MASK | PERF_REGS_MASK);
 }

 return PERF_REGS_MASK;
}

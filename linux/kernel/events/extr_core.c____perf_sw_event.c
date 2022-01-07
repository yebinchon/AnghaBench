
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;


 int PERF_TYPE_SOFTWARE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int do_perf_sw_event (int ,int ,int ,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;

void ___perf_sw_event(u32 event_id, u64 nr, struct pt_regs *regs, u64 addr)
{
 struct perf_sample_data data;

 if (WARN_ON_ONCE(!regs))
  return;

 perf_sample_data_init(&data, addr, 0);
 do_perf_sw_event(PERF_TYPE_SOFTWARE, event_id, nr, &data, regs);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_RUN (struct bpf_prog const*,void const*) ;
 int do_div (scalar_t__,int) ;
 scalar_t__ ktime_get_ns () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static int __run_one(const struct bpf_prog *fp, const void *data,
       int runs, u64 *duration)
{
 u64 start, finish;
 int ret = 0, i;

 preempt_disable();
 start = ktime_get_ns();

 for (i = 0; i < runs; i++)
  ret = BPF_PROG_RUN(fp, data);

 finish = ktime_get_ns();
 preempt_enable();

 *duration = finish - start;
 do_div(*duration, runs);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_regs {int dummy; } ;


 int BPF_ANY ;
 int bpf_current_task_under_cgroup (int *,int ) ;
 int bpf_get_current_pid_tgid () ;
 int bpf_map_update_elem (int *,int*,int *,int ) ;
 int cgroup_map ;
 int perf_map ;

int bpf_prog1(struct pt_regs *ctx)
{
 u64 pid = bpf_get_current_pid_tgid();
 int idx = 0;

 if (!bpf_current_task_under_cgroup(&cgroup_map, 0))
  return 0;

 bpf_map_update_elem(&perf_map, &idx, &pid, BPF_ANY);
 return 0;
}

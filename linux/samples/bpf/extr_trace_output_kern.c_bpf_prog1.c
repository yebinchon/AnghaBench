
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct S TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int dummy; } ;
typedef int data ;
struct S {int pid; int cookie; } ;


 int bpf_get_current_pid_tgid () ;
 int bpf_perf_event_output (struct pt_regs*,int *,int ,TYPE_1__*,int) ;
 int my_map ;

int bpf_prog1(struct pt_regs *ctx)
{
 struct S {
  u64 pid;
  u64 cookie;
 } data;

 data.pid = bpf_get_current_pid_tgid();
 data.cookie = 0x12345678;

 bpf_perf_event_output(ctx, &my_map, 0, &data, sizeof(data));

 return 0;
}

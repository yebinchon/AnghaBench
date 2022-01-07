
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* sys_exit; void* sys_enter; } ;
struct TYPE_4__ {TYPE_1__ prog_array; void* map; } ;
struct trace {TYPE_2__ syscalls; } ;


 void* trace__find_bpf_map_by_name (struct trace*,char*) ;

__attribute__((used)) static void trace__set_bpf_map_syscalls(struct trace *trace)
{
 trace->syscalls.map = trace__find_bpf_map_by_name(trace, "syscalls");
 trace->syscalls.prog_array.sys_enter = trace__find_bpf_map_by_name(trace, "syscalls_sys_enter");
 trace->syscalls.prog_array.sys_exit = trace__find_bpf_map_by_name(trace, "syscalls_sys_exit");
}

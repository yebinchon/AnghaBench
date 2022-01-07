
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_int_field (int ,char*,int) ;
 int printf (char*,...) ;
 int read_procfs (char*) ;

__attribute__((used)) static void probe_jit_limit(void)
{
 int res;



 res = read_procfs("/proc/sys/net/core/bpf_jit_limit");
 if (json_output) {
  jsonw_int_field(json_wtr, "bpf_jit_limit", res);
 } else {
  switch (res) {
  case -1:
   printf("Unable to retrieve global memory limit for JIT compiler for unprivileged users\n");
   break;
  default:
   printf("Global memory limit for JIT compiler for unprivileged users is %d bytes\n", res);
  }
 }
}

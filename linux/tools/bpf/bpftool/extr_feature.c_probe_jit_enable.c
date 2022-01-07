
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_int_field (int ,char*,int) ;
 int printf (char*,...) ;
 int read_procfs (char*) ;

__attribute__((used)) static void probe_jit_enable(void)
{
 int res;



 res = read_procfs("/proc/sys/net/core/bpf_jit_enable");
 if (json_output) {
  jsonw_int_field(json_wtr, "bpf_jit_enable", res);
 } else {
  switch (res) {
  case 0:
   printf("JIT compiler is disabled\n");
   break;
  case 1:
   printf("JIT compiler is enabled\n");
   break;
  case 2:
   printf("JIT compiler is enabled with debugging traces in kernel logs\n");
   break;
  case -1:
   printf("Unable to retrieve JIT-compiler status\n");
   break;
  default:
   printf("JIT-compiler status has unknown value %d\n",
          res);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_int_field (int ,char*,int) ;
 int printf (char*,...) ;
 int read_procfs (char*) ;

__attribute__((used)) static void probe_unprivileged_disabled(void)
{
 int res;



 res = read_procfs("/proc/sys/kernel/unprivileged_bpf_disabled");
 if (json_output) {
  jsonw_int_field(json_wtr, "unprivileged_bpf_disabled", res);
 } else {
  switch (res) {
  case 0:
   printf("bpf() syscall for unprivileged users is enabled\n");
   break;
  case 1:
   printf("bpf() syscall restricted to privileged users\n");
   break;
  case -1:
   printf("Unable to retrieve required privileges for bpf() syscall\n");
   break;
  default:
   printf("bpf() syscall restriction has unknown value %d\n", res);
  }
 }
}

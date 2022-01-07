
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int EXIT_FAIL_BPF ;
 int MAX_CPUS ;
 int bpf_map_update_elem (int ,int*,int*,int ) ;
 int cpus_available_map_fd ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void mark_cpus_unavailable(void)
{
 __u32 invalid_cpu = MAX_CPUS;
 int ret, i;

 for (i = 0; i < MAX_CPUS; i++) {
  ret = bpf_map_update_elem(cpus_available_map_fd, &i,
       &invalid_cpu, 0);
  if (ret) {
   fprintf(stderr, "Failed marking CPU unavailable\n");
   exit(EXIT_FAIL_BPF);
  }
 }
}

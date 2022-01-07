
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int EXIT_FAIL_BPF ;
 int bpf_map_lookup_elem (int ,int*,int*) ;
 int bpf_map_update_elem (int ,int*,int*,int ) ;
 int cpu_map_fd ;
 int cpus_available_map_fd ;
 int cpus_count_map_fd ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,char*,int,int,int,int) ;
 int stderr ;

__attribute__((used)) static int create_cpu_entry(__u32 cpu, __u32 queue_size,
       __u32 avail_idx, bool new)
{
 __u32 curr_cpus_count = 0;
 __u32 key = 0;
 int ret;




 ret = bpf_map_update_elem(cpu_map_fd, &cpu, &queue_size, 0);
 if (ret) {
  fprintf(stderr, "Create CPU entry failed (err:%d)\n", ret);
  exit(EXIT_FAIL_BPF);
 }




 ret = bpf_map_update_elem(cpus_available_map_fd, &avail_idx, &cpu, 0);
 if (ret) {
  fprintf(stderr, "Add to avail CPUs failed\n");
  exit(EXIT_FAIL_BPF);
 }


 ret = bpf_map_lookup_elem(cpus_count_map_fd, &key, &curr_cpus_count);
 if (ret) {
  fprintf(stderr, "Failed reading curr cpus_count\n");
  exit(EXIT_FAIL_BPF);
 }
 if (new) {
  curr_cpus_count++;
  ret = bpf_map_update_elem(cpus_count_map_fd, &key,
       &curr_cpus_count, 0);
  if (ret) {
   fprintf(stderr, "Failed write curr cpus_count\n");
   exit(EXIT_FAIL_BPF);
  }
 }

 printf("%s CPU:%u as idx:%u queue_size:%d (total cpus_count:%u)\n",
        new ? "Add-new":"Replace", cpu, avail_idx,
        queue_size, curr_cpus_count);

 return 0;
}

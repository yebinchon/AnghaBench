
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef scalar_t__ __u32 ;


 int bpf_get_current_cgroup_id () ;
 scalar_t__ bpf_get_current_pid_tgid () ;
 void* bpf_map_lookup_elem (int *,scalar_t__*) ;
 int cg_ids ;
 int pidmap ;

int trace(void *ctx)
{
 __u32 pid = bpf_get_current_pid_tgid();
 __u32 key = 0, *expected_pid;
 __u64 *val;

 expected_pid = bpf_map_lookup_elem(&pidmap, &key);
 if (!expected_pid || *expected_pid != pid)
  return 0;

 val = bpf_map_lookup_elem(&cg_ids, &key);
 if (val)
  *val = bpf_get_current_cgroup_id();

 return 0;
}

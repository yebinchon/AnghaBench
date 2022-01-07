
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;
typedef int __u32 ;


 int bpf_prog_query (int,int,int ,int *,int *,int*) ;
 int query_flags ;

__attribute__((used)) static int count_attached_bpf_progs(int cgroup_fd, enum bpf_attach_type type)
{
 __u32 prog_cnt = 0;
 int ret;

 ret = bpf_prog_query(cgroup_fd, type, query_flags, ((void*)0),
        ((void*)0), &prog_cnt);
 if (ret)
  return -1;

 return prog_cnt;
}

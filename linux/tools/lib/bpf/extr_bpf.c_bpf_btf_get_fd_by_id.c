
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int btf_id; } ;
typedef int attr ;
typedef int __u32 ;


 int BPF_BTF_GET_FD_BY_ID ;
 int memset (union bpf_attr*,int ,int) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_btf_get_fd_by_id(__u32 id)
{
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.btf_id = id;

 return sys_bpf(BPF_BTF_GET_FD_BY_ID, &attr, sizeof(attr));
}

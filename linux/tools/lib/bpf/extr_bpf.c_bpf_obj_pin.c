
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int bpf_fd; int pathname; } ;
typedef int attr ;


 int BPF_OBJ_PIN ;
 int memset (union bpf_attr*,int ,int) ;
 int ptr_to_u64 (void*) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_obj_pin(int fd, const char *pathname)
{
 union bpf_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.pathname = ptr_to_u64((void *)pathname);
 attr.bpf_fd = fd;

 return sys_bpf(BPF_OBJ_PIN, &attr, sizeof(attr));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int value_size; int map_flags; } ;
typedef int u32 ;


 int BPF_F_RDONLY_PROG ;
 int BPF_F_WRONLY_PROG ;
 int EINVAL ;
 int array_map_alloc_check (union bpf_attr*) ;

__attribute__((used)) static int fd_array_map_alloc_check(union bpf_attr *attr)
{

 if (attr->value_size != sizeof(u32))
  return -EINVAL;

 if (attr->map_flags & (BPF_F_RDONLY_PROG | BPF_F_WRONLY_PROG))
  return -EINVAL;
 return array_map_alloc_check(attr);
}

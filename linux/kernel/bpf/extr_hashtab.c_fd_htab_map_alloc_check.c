
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int value_size; } ;
typedef int u32 ;


 int EINVAL ;
 int htab_map_alloc_check (union bpf_attr*) ;

__attribute__((used)) static int fd_htab_map_alloc_check(union bpf_attr *attr)
{
 if (attr->value_size != sizeof(u32))
  return -EINVAL;
 return htab_map_alloc_check(attr);
}

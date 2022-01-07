
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int map_flags; int key_size; int value_size; int btf_value_type_id; int btf_key_type_id; scalar_t__ max_entries; } ;
struct bpf_sk_storage_elem {int dummy; } ;


 int BPF_F_NO_PREALLOC ;
 int CAP_SYS_ADMIN ;
 int E2BIG ;
 int EINVAL ;
 int EPERM ;
 int KMALLOC_MAX_SIZE ;
 int MAX_BPF_STACK ;
 int SK_STORAGE_CREATE_FLAG_MASK ;
 int U16_MAX ;
 int capable (int ) ;

__attribute__((used)) static int bpf_sk_storage_map_alloc_check(union bpf_attr *attr)
{
 if (attr->map_flags & ~SK_STORAGE_CREATE_FLAG_MASK ||
     !(attr->map_flags & BPF_F_NO_PREALLOC) ||
     attr->max_entries ||
     attr->key_size != sizeof(int) || !attr->value_size ||

     !attr->btf_key_type_id || !attr->btf_value_type_id)
  return -EINVAL;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (attr->value_size >= KMALLOC_MAX_SIZE -
     MAX_BPF_STACK - sizeof(struct bpf_sk_storage_elem) ||



     attr->value_size > U16_MAX - sizeof(struct bpf_sk_storage_elem))
  return -E2BIG;

 return 0;
}

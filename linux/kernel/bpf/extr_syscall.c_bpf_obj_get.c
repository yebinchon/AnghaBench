
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {scalar_t__ bpf_fd; int file_flags; int pathname; } ;


 int BPF_OBJ ;
 int BPF_OBJ_FLAG_MASK ;
 scalar_t__ CHECK_ATTR (int ) ;
 int EINVAL ;
 int bpf_obj_get_user (int ,int) ;
 int u64_to_user_ptr (int ) ;

__attribute__((used)) static int bpf_obj_get(const union bpf_attr *attr)
{
 if (CHECK_ATTR(BPF_OBJ) || attr->bpf_fd != 0 ||
     attr->file_flags & ~BPF_OBJ_FLAG_MASK)
  return -EINVAL;

 return bpf_obj_get_user(u64_to_user_ptr(attr->pathname),
    attr->file_flags);
}

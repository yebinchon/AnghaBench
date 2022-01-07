
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {scalar_t__ file_flags; int pathname; int bpf_fd; } ;


 int BPF_OBJ ;
 scalar_t__ CHECK_ATTR (int ) ;
 int EINVAL ;
 int bpf_obj_pin_user (int ,int ) ;
 int u64_to_user_ptr (int ) ;

__attribute__((used)) static int bpf_obj_pin(const union bpf_attr *attr)
{
 if (CHECK_ATTR(BPF_OBJ) || attr->file_flags != 0)
  return -EINVAL;

 return bpf_obj_pin_user(attr->bpf_fd, u64_to_user_ptr(attr->pathname));
}

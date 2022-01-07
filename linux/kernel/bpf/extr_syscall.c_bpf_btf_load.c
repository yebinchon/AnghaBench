
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bpf_attr {int dummy; } bpf_attr ;


 int BPF_BTF_LOAD ;
 int CAP_SYS_ADMIN ;
 scalar_t__ CHECK_ATTR (int ) ;
 int EINVAL ;
 int EPERM ;
 int btf_new_fd (union bpf_attr const*) ;
 int capable (int ) ;

__attribute__((used)) static int bpf_btf_load(const union bpf_attr *attr)
{
 if (CHECK_ATTR(BPF_BTF_LOAD))
  return -EINVAL;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 return btf_new_fd(attr);
}

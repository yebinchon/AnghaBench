
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int btf_id; } ;


 int BPF_BTF_GET_FD_BY_ID ;
 int CAP_SYS_ADMIN ;
 scalar_t__ CHECK_ATTR (int ) ;
 int EINVAL ;
 int EPERM ;
 int btf_get_fd_by_id (int ) ;
 int capable (int ) ;

__attribute__((used)) static int bpf_btf_get_fd_by_id(const union bpf_attr *attr)
{
 if (CHECK_ATTR(BPF_BTF_GET_FD_BY_ID))
  return -EINVAL;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 return btf_get_fd_by_id(attr->btf_id);
}

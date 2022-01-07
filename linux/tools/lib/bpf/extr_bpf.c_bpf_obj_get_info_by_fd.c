
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bpf_fd; int info_len; int info; } ;
union bpf_attr {TYPE_1__ info; } ;
typedef int attr ;
typedef int __u32 ;


 int BPF_OBJ_GET_INFO_BY_FD ;
 int memset (union bpf_attr*,int ,int) ;
 int ptr_to_u64 (void*) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_obj_get_info_by_fd(int prog_fd, void *info, __u32 *info_len)
{
 union bpf_attr attr;
 int err;

 memset(&attr, 0, sizeof(attr));
 attr.info.bpf_fd = prog_fd;
 attr.info.info_len = *info_len;
 attr.info.info = ptr_to_u64(info);

 err = sys_bpf(BPF_OBJ_GET_INFO_BY_FD, &attr, sizeof(attr));
 if (!err)
  *info_len = attr.info.info_len;

 return err;
}

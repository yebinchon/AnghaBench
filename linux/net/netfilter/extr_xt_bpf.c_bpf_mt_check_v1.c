
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_bpf_info_v1* matchinfo; } ;
struct xt_bpf_info_v1 {scalar_t__ mode; int filter; int path; int fd; int bpf_program_num_elem; int bpf_program; } ;


 int EINVAL ;
 scalar_t__ XT_BPF_MODE_BYTECODE ;
 scalar_t__ XT_BPF_MODE_FD_ELF ;
 scalar_t__ XT_BPF_MODE_PATH_PINNED ;
 int __bpf_mt_check_bytecode (int ,int ,int *) ;
 int __bpf_mt_check_fd (int ,int *) ;
 int __bpf_mt_check_path (int ,int *) ;

__attribute__((used)) static int bpf_mt_check_v1(const struct xt_mtchk_param *par)
{
 struct xt_bpf_info_v1 *info = par->matchinfo;

 if (info->mode == XT_BPF_MODE_BYTECODE)
  return __bpf_mt_check_bytecode(info->bpf_program,
            info->bpf_program_num_elem,
            &info->filter);
 else if (info->mode == XT_BPF_MODE_FD_ELF)
  return __bpf_mt_check_fd(info->fd, &info->filter);
 else if (info->mode == XT_BPF_MODE_PATH_PINNED)
  return __bpf_mt_check_path(info->path, &info->filter);
 else
  return -EINVAL;
}

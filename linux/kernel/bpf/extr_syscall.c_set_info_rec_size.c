
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_info {int func_info_rec_size; int line_info_rec_size; int jited_line_info_rec_size; scalar_t__ nr_jited_line_info; scalar_t__ nr_line_info; scalar_t__ nr_func_info; } ;
struct bpf_line_info {int dummy; } ;
struct bpf_func_info {int dummy; } ;
typedef int __u64 ;


 int EINVAL ;

__attribute__((used)) static int set_info_rec_size(struct bpf_prog_info *info)
{
 if ((info->nr_func_info || info->func_info_rec_size) &&
     info->func_info_rec_size != sizeof(struct bpf_func_info))
  return -EINVAL;

 if ((info->nr_line_info || info->line_info_rec_size) &&
     info->line_info_rec_size != sizeof(struct bpf_line_info))
  return -EINVAL;

 if ((info->nr_jited_line_info || info->jited_line_info_rec_size) &&
     info->jited_line_info_rec_size != sizeof(__u64))
  return -EINVAL;

 info->func_info_rec_size = sizeof(struct bpf_func_info);
 info->line_info_rec_size = sizeof(struct bpf_line_info);
 info->jited_line_info_rec_size = sizeof(__u64);

 return 0;
}

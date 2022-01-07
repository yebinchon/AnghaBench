
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_bpf_info* matchinfo; } ;
struct xt_bpf_info {int filter; int bpf_program_num_elem; int bpf_program; } ;


 int __bpf_mt_check_bytecode (int ,int ,int *) ;

__attribute__((used)) static int bpf_mt_check(const struct xt_mtchk_param *par)
{
 struct xt_bpf_info *info = par->matchinfo;

 return __bpf_mt_check_bytecode(info->bpf_program,
           info->bpf_program_num_elem,
           &info->filter);
}

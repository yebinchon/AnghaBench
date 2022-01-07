
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtdtor_param {struct xt_bpf_info* matchinfo; } ;
struct xt_bpf_info {int filter; } ;


 int bpf_prog_destroy (int ) ;

__attribute__((used)) static void bpf_mt_destroy(const struct xt_mtdtor_param *par)
{
 const struct xt_bpf_info *info = par->matchinfo;

 bpf_prog_destroy(info->filter);
}

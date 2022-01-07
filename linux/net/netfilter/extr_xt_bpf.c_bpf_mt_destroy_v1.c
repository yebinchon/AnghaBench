
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtdtor_param {struct xt_bpf_info_v1* matchinfo; } ;
struct xt_bpf_info_v1 {int filter; } ;


 int bpf_prog_destroy (int ) ;

__attribute__((used)) static void bpf_mt_destroy_v1(const struct xt_mtdtor_param *par)
{
 const struct xt_bpf_info_v1 *info = par->matchinfo;

 bpf_prog_destroy(info->filter);
}

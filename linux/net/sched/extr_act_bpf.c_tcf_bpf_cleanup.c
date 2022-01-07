
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_bpf_cfg {int dummy; } ;
struct tc_action {int dummy; } ;


 int tcf_bpf_cfg_cleanup (struct tcf_bpf_cfg*) ;
 int tcf_bpf_prog_fill_cfg (int ,struct tcf_bpf_cfg*) ;
 int to_bpf (struct tc_action*) ;

__attribute__((used)) static void tcf_bpf_cleanup(struct tc_action *act)
{
 struct tcf_bpf_cfg tmp;

 tcf_bpf_prog_fill_cfg(to_bpf(act), &tmp);
 tcf_bpf_cfg_cleanup(&tmp);
}

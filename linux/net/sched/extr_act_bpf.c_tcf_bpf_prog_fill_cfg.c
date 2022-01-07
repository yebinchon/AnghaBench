
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_bpf_cfg {int bpf_name; int bpf_ops; int filter; int is_ebpf; } ;
struct tcf_bpf {int bpf_name; int bpf_ops; int filter; } ;


 int rcu_dereference_protected (int ,int) ;
 int tcf_bpf_is_ebpf (struct tcf_bpf const*) ;

__attribute__((used)) static void tcf_bpf_prog_fill_cfg(const struct tcf_bpf *prog,
      struct tcf_bpf_cfg *cfg)
{
 cfg->is_ebpf = tcf_bpf_is_ebpf(prog);



 cfg->filter = rcu_dereference_protected(prog->filter, 1);

 cfg->bpf_ops = prog->bpf_ops;
 cfg->bpf_name = prog->bpf_name;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_bpf_cfg {int bpf_name; int bpf_ops; scalar_t__ is_ebpf; struct bpf_prog* filter; } ;
struct bpf_prog {int dummy; } ;


 int bpf_prog_destroy (struct bpf_prog*) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int kfree (int ) ;

__attribute__((used)) static void tcf_bpf_cfg_cleanup(const struct tcf_bpf_cfg *cfg)
{
 struct bpf_prog *filter = cfg->filter;

 if (filter) {
  if (cfg->is_ebpf)
   bpf_prog_put(filter);
  else
   bpf_prog_destroy(filter);
 }

 kfree(cfg->bpf_ops);
 kfree(cfg->bpf_name);
}

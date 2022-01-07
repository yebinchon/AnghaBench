
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int idx; scalar_t__ insns_cnt; scalar_t__ nr_reloc; int reloc_desc; int insns; int pin_name; int section_name; int name; int (* clear_priv ) (struct bpf_program*,int *) ;int * priv; } ;


 int bpf_program__unload (struct bpf_program*) ;
 int stub1 (struct bpf_program*,int *) ;
 int zfree (int *) ;

__attribute__((used)) static void bpf_program__exit(struct bpf_program *prog)
{
 if (!prog)
  return;

 if (prog->clear_priv)
  prog->clear_priv(prog, prog->priv);

 prog->priv = ((void*)0);
 prog->clear_priv = ((void*)0);

 bpf_program__unload(prog);
 zfree(&prog->name);
 zfree(&prog->section_name);
 zfree(&prog->pin_name);
 zfree(&prog->insns);
 zfree(&prog->reloc_desc);

 prog->nr_reloc = 0;
 prog->insns_cnt = 0;
 prog->idx = -1;
}

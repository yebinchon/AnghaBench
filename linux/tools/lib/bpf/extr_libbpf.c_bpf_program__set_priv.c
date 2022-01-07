
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int (* clear_priv ) (struct bpf_program*,void*) ;void* priv; } ;
typedef int (* bpf_program_clear_priv_t ) (struct bpf_program*,void*) ;


 int stub1 (struct bpf_program*,void*) ;

int bpf_program__set_priv(struct bpf_program *prog, void *priv,
     bpf_program_clear_priv_t clear_priv)
{
 if (prog->priv && prog->clear_priv)
  prog->clear_priv(prog, prog->priv);

 prog->priv = priv;
 prog->clear_priv = clear_priv;
 return 0;
}

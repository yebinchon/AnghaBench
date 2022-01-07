
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cls_bpf_prog {int exts; } ;


 int cls_bpf_free_parms (struct cls_bpf_prog*) ;
 int kfree (struct cls_bpf_prog*) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __cls_bpf_delete_prog(struct cls_bpf_prog *prog)
{
 tcf_exts_destroy(&prog->exts);
 tcf_exts_put_net(&prog->exts);

 cls_bpf_free_parms(prog);
 kfree(prog);
}

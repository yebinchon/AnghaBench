
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct basic_filter {int pf; int exts; int ematches; } ;


 int free_percpu (int ) ;
 int kfree (struct basic_filter*) ;
 int tcf_em_tree_destroy (int *) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __basic_delete_filter(struct basic_filter *f)
{
 tcf_exts_destroy(&f->exts);
 tcf_em_tree_destroy(&f->ematches);
 tcf_exts_put_net(&f->exts);
 free_percpu(f->pf);
 kfree(f);
}
